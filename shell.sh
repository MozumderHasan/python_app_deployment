
#!/bin/bash
# example command : xterm -e "python main.py"
# Go to the main directory.
cd /home/hasan/Desktop/git_prac/python_app_deployment



#Fastapi run
cd python-fast-app
gnome-terminal -e "./shellFast.sh" &

# Go to the second directory.
cd ..
cd python-micro-service
gnome-terminal -e "./shellmain.sh"
# Go to the second directory.
# cd document_app

# gnome-terminal -e "./shellapp3.sh" &
# # Go to the third directory.
# cd ..
# cd music_app
# gnome-terminal -e "./shellapp2.sh" &
# # Go to the fourth directory.
# cd ..
# cd post_app
# gnome-terminal -e "./shellapp1.sh"



















# # Set the database connection variables.
# db_host="localhost"
# db_port=3306
# db_user="root"
# db_password="H12345"
# db_database="collection"

# # Create the database and tables if they do not exist.
# mysql -u $db_user -p$db_password -e "CREATE DATABASE IF NOT EXISTS $db_database;"
# mysql -u $db_user -p$db_password -D $db_database -e "CREATE TABLE IF NOT EXISTS documents (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     name VARCHAR(255) NOT NULL,
#     data TEXT NOT NULL
# );

# CREATE TABLE IF NOT EXISTS music (
#     name VARCHAR(255) NOT NULL,
#     data LONGBLOB NOT NULL
# );

# CREATE TABLE IF NOT EXISTS photo (
#     name VARCHAR(255) NOT NULL,
#     data LONGBLOB NOT NULL
# );
# "
# #!/bin/bash

# #(workon flask_app && python main.py) &
# # (workon streamlit_app1 && streamlit run app1.py) &
# # (workon streamlit_app2 && streamlit run app2.py) &
# # (workon streamlit_app3 && streamlit run app3.py)
# # Activate the virtual environment for the Flask application.
# gnome-terminal -x "workon python && cd ./home/hasan/Desktop/git_prac/python_app_deployment/python-micro-service && source ./vFlask/bin/activate && python main.py"
# #source /python-micro-service/vFlask/bin/activate

# # Start the Flask application.
# #python python-micro-service/main.py

# # # Activate the virtual environment for the first Streamlit subapplication.
# # source python-micro-service/post_app/vapp1/bin/activate

# # # Start the first Streamlit subapplication.
# # streamlit run python-micro-service/post_app/app1.py

# # # Activate the virtual environment for the second Streamlit subapplication.
# # source python-micro-service/music_app/vapp2/bin/activate

# # # Start the second Streamlit subapplication.
# # streamlit run python-micro-service/music_app/app2.py

# # # Activate the virtual environment for the third Streamlit subapplication.
# # source python-micro-service/document_app/vapp3/bin/activate

# # # Start the third Streamlit subapplication.
# # streamlit run python-micro-service/document_app/app3.py &

# # # Wait for all of the applications to finish running.
# # wait
