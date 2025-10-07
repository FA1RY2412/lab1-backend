from flask import Flask, jsonify
from datetime import datetime, timezone

app = Flask(__name__)

@app.get("/")
def index():
    return jsonify({"message": "Welcome to Flask Lab1. See /healthcheck"})

@app.get("/healthcheck")
def healthcheck():
    return jsonify({
        "status": "OK",
        "date": datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    })
