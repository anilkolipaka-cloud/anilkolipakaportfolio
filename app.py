from flask import Flask, send_from_directory
import os

app = Flask(__name__)

# Serve the index.html file
@app.route('/')
def index():
    return send_from_directory(os.getcwd(), 'index.html')

# Serve static files like CSS, JS, and images from the current directory
@app.route('/<path:filename>')
def serve_static_files(filename):
    return send_from_directory(os.getcwd(), filename)

# Serve files within the assets folder specifically
@app.route('/assets/<path:filename>')
def serve_assets(filename):
    return send_from_directory(os.path.join(os.getcwd(), 'assets'), filename)

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=8080)

