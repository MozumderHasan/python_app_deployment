#!/bin/bash

# Activate the virtual environment.
#source vFlask/bin/activate

# Open a new terminal window.
#gnome-terminal

# Run requirements and app.py in the new terminal window.
source vFlask/bin/activate && pip3 install -r requirements.txt && python3 main.py
