# Set the database connection variables.
db_host="localhost"
db_port=3306
db_user="root"
db_password="H12345"
db_database="collection"

# Create the database and tables if they do not exist.
mysql -u $db_user -p$db_password -e "CREATE DATABASE IF NOT EXISTS $db_database;"
mysql -u $db_user -p$db_password -D $db_database -e "CREATE TABLE IF NOT EXISTS documents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    data TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS music (
    name VARCHAR(255) NOT NULL,
    data LONGBLOB NOT NULL
);

CREATE TABLE IF NOT EXISTS photo (
    name VARCHAR(255) NOT NULL,
    data LONGBLOB NOT NULL
);
"

# Start the Flask app.
python main.py

# Start the three Streamlit subapplications.
streamlit run app1.py
streamlit run app2.py
streamlit run app3.py

