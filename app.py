from flask import Flask, render_template, request
from flask_socketio import SocketIO, emit
import subprocess
from tqdm import tqdm
import markdown
import re

app = Flask(__name__)
socketio = SocketIO(app)



@app.route('/')
def index():
    return render_template('index.html')

# Function to strip ANSI codes
def strip_ansi_codes(text):
    ansi_escape = re.compile(r'(?:\x1B[@-_][0-?]*[ -/]*[@-~])')
    return ansi_escape.sub('', text)

# Function to convert markdown to HTML
def convert_markdown_to_html(text):
    return markdown.markdown(text, extensions=['fenced_code', 'tables'])

@socketio.on('run_task')
def handle_run_task(data):
    scenario = data['scenario']
    database = data['database']
    question_num = data['question_num']
    model = data['model']

    # Run the subprocess to execute the LLM decision system
    command = [
        'python', 'src/main.py',
        '--scenario', scenario,
        '--database', database,
        '--question_num', str(question_num),
        '--model', model
    ]

    process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)

    # Stream the output back to the client through WebSocket
    for output in process.stdout:
        clean_output = strip_ansi_codes(output)  # Remove ANSI escape codes
        html_output = convert_markdown_to_html(clean_output)  # Convert markdown to HTML
        socketio.emit('task_output', {'output': html_output})

    process.stdout.close()

if __name__ == '__main__':
    socketio.run(app, debug=True)
