# API prac 
## curl -i -X GET "url to website"

# import requests
# import json

# URL = ""
# respone = requests.get(URL)
# data = json.loads(respone.content.decode("utf-8"))

# print(respone, data)

from flask import Flask, jsonify, requests

app = Flask(__name__)

@app.get("/greet")
def index():
    """
    TODO:

    """
    return "Hello, World!"
