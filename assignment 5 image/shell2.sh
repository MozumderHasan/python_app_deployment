#!/bin/bash

# Activate the virtual environment for the Flask application.
source flask_venv/bin/activate

# Start the Flask application.
python main.py &

# Activate the virtual environment for the first Streamlit subapplication.
source streamlit_venv_1/bin/activate

# Start the first Streamlit subapplication.
streamlit run subapp1.py &

# Activate the virtual environment for the second Streamlit subapplication.
source streamlit_venv_2/bin/activate

# Start the second Streamlit subapplication.
streamlit run subapp2.py &

# Activate the virtual environment for the third Streamlit subapplication.
source streamlit_venv_3/bin/activate

# Start the third Streamlit subapplication.
streamlit run subapp3.py &

# Wait for all of the applications to finish running.
wait
