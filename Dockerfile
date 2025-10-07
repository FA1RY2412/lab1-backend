FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


ARG REBUILD=9

COPY . .


CMD ["python", "app.py"]
