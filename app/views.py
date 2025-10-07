from flask import jsonify
from datetime import datetime, timezone
from app import app

@app.route('/healthcheck', methods=['GET'])
def healthcheck():
    return jsonify({
        "status": "OK",
        "date": datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S %Z")
    }), 200

@app.route('/', methods=['GET'])
def root():
    return jsonify({
        "message": "Welcome to Flask Lab1. See /healthcheck"
    }), 200
