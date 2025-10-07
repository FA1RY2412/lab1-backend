FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


ARG REBUILD=6

COPY . .


ENV FLASK_APP=app
ENV FLASK_ENV=production

ENV PORT=8080


CMD sh -c 'flask run --host=0.0.0.0 --port ${PORT}'
