FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY . .


CMD sh -c 'flask --app app.py run --host=0.0.0.0 --port ${PORT:-8080}'
