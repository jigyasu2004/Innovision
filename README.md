# Innovision
## Setup 

### Databases
#### 1. Graph database
```bash
# Ubuntu
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"
sudo apt install neo4j-enterprise
sudo apt install cypher-shell
cypher-shell -u neo4j
```
#### 2. Relational database
```bash
# Ubuntu
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.14-1_all.deb
sudo apt update
sudo apt install -y mysql-server
sudo mysql -u root
mysql> CREATE DATABASE DQA_rdb;
mysql> USE mysql;
mysql> update user set plugin='mysql_native_password' where user='root';
mysql> flush privileges;
```

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
