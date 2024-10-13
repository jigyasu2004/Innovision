from flask import Flask, request, jsonify, Response
import os
import pandas as pd
import json
import logging
import time
from io import StringIO
from utils import Neo4jDatabase, SQLDatabase
from data_loaders.building import building_dataloader
from data_loaders.locating import locating_dataloader
from langchain.chat_models import ChatOpenAI
from techniques.PlanRAG.PlanRAG_woReplan.base import TaskManagerChain as TaskManager
from langchain.agents import Tool

app = Flask(__name__)

config = json.load(open('./config.json', 'r'))
os.environ["OPENAI_API_KEY"] = config['OPENAI_API_KEY']

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger()

# Function to load the database based on scenario and database type
def load_db(db_engine, db_file_path, database_type):
    if database_type == "graph":
        file = open(db_file_path, "r")
        queries_list = file.readlines()
        db_engine.query("match (n) detach delete n;")
        for line in queries_list:
            db_engine.query(line)

    elif database_type == "relational":
        file = open(db_file_path, "r")
        queries_list = file.readlines()
        db_engine.query("drop database DQA_rdb;")
        db_engine.query("create database DQA_rdb;")
        db_engine.query("use DQA_rdb;")
        for line in queries_list:
            db_engine.query(line)
    else:
        raise ValueError("Invalid database type")

# Endpoint to run the model and stream the output
@app.route('/run_model_stream', methods=['POST'])
def run_model_stream():
    data = request.json
    scenario = data.get("scenario")
    database_type = data.get("database")
    question_num = data.get("question_num")
    model_name = data.get("model")

    pd.set_option("display.max_rows", 200)
    pd.set_option('display.max_colwidth', 1000)

    # Setup logging to capture output in memory
    log_stream = StringIO()
    stream_handler = logging.StreamHandler(log_stream)
    logger.addHandler(stream_handler)

    try:
        if scenario == "building":
            question, _, country = building_dataloader(question_num, question_path="./data/building/questions/simulated_questions.json")
        elif scenario == "locating":
            question, _, _ = locating_dataloader(question_num, "./data/locating/questions/simulated_question.json", option=False)
        else:
            return jsonify({"error": "Invalid scenario"})

        tool_description_template = "Useful for generating a {query_type} statement."

        if database_type == "graph":
            db_config = config['NEO4J']
            db_engine = Neo4jDatabase(host=db_config['HOST'], user=db_config['USER'], password=db_config['PASSWORD'], database="neo4j")
            db_file_path = f"./data/{scenario}/queries/LPG_format/q{question_num}.cql"
            tool_name = "Graph DB"
            tool_description = tool_description_template.format(query_type="Cypher query")
        
        elif database_type == "relational":
            db_config = config['MYSQL']
            db_engine = SQLDatabase.from_uri(f"mysql+pymysql://{db_config['USER']}@{db_config['HOST']}/DQA_rdb")
            db_file_path = f"./data/{scenario}/queries/SQL_format/q{question_num}.sql"
            tool_name = "Relational DB"
            tool_description = tool_description_template.format(query_type="MySQL")

        load_db(db_engine, db_file_path, database_type)

        try:
            llm = ChatOpenAI(temperature=0, model_name=model_name, max_retries=40)
        except:
            return jsonify({"error": "Invalid model"})

        task_manager = TaskManager.from_llm_and_tools(llm=llm, tools=[Tool(name=tool_name, func=db_engine.query, description=tool_description)], verbose=True)

        # Run the task manager and log output
        task_manager.run(question)

        def generate():
            while True:
                time.sleep(1)  # Slight delay for streaming output
                output = log_stream.getvalue()  # Get log output
                if output:
                    yield f"data: {output}\n\n"
                    log_stream.truncate(0)  # Clear log after reading
                    log_stream.seek(0)
        
        return Response(generate(), mimetype='text/event-stream')

    finally:
        logger.removeHandler(stream_handler)
        stream_handler.close()

if __name__ == '__main__':
    app.run(debug=True)
