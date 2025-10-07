from app import app
from flask import jsonify
from datetime import datetime

@app.route('/')
def index():
    return jsonify({"message": "Welcome to Flask Lab1. See /healthcheck"})

@app.route('/healthcheck')
def healthcheck():
    return jsonify({
        "status": "OK",
        "date": datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S UTC")
    })
