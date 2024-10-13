# Innovision

### Configuration
Please fill the values in "config.json" file with database connection information and your API key you want to use.

```json
{
    "OPENAI_API_KEY": "Your OpenAI API key", 
    "NEO4J": {
        "HOST": "Neo4j host address (default: 'bolt://localhost:7687')", 
        "USER": "User id (default: 'neo4j')",
        "PASSWORD": "User password (Do not fill with the default password 'neo4j')"
    }
    "MYSQL": {
        "HOST": "MySQL host address (default: 'localhost')",
        "USER": "User id (default: 'root')"
    }
}
```

### Python environment
```bash
conda create -n RAG -y python=3.8 && conda activate RAG
pip install -r requirements.txt
```

## Execution examples
  ```bash
  # locating scenario with relational database
  python src/main.py \
      --scenario locating \
      --database relational \
      --question_num 1 \
      --model gpt-4 \
  
  # building scenario with graph database
  python src/main.py \
      --scenario building \
      --database graph \
      --question_num 1 \
      --model gpt-4 \
  ```

## Hosting Website
  ```bash
  python app.py
  ```


Note: We have not enough time to work on this project as the shortlisting results will be announced on October 8th.
