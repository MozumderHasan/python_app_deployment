#!/bin/bash

# Activate the virtual environment.
#source vFlask/bin/activate

# Open a new terminal window.
#gnome-terminal

# Run requirements and app.py in the new terminal window.
source vFlask/bin/activate && pip3 install -r requirements.txt && python3 main.py &

cd document_app

gnome-terminal -e "./shellapp3.sh" &
# Go to the third directory.
cd ..
cd music_app
gnome-terminal -e "./shellapp2.sh" &
# Go to the fourth directory.
cd ..
cd post_app
gnome-terminal -e "./shellapp1.sh"
