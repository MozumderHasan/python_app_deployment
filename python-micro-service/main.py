import socket
from flask import Flask, redirect, render_template

app = Flask(__name__)

#ip = '192.168.0.110'
ip = socket.gethostbyname(socket.gethostname())
# Render the homepage with buttons
@app.route('/')
def index():
    return render_template('index.html')

# Redirect to post_app
@app.route('/redirect-7000')
def redirect_7000():
    return redirect(f'http://{ip}:8503')

# Redirect to music_app
@app.route('/redirect-8000')
def redirect_8000():
    return redirect(f'http://{ip}:8502')

# Redirect to documents_app
@app.route('/redirect-9000')
def redirect_9000():
    return redirect(f'http://{ip}:8501')

if __name__ == '__main__':
    # If running with Gunicorn, you can start the app using Gunicorn like this:
    # gunicorn main:app -b 0.0.0.0:8080
    app.run(port=5000)
