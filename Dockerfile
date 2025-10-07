FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


ARG REBUILD=12

COPY . .


ENV PORT=8080
CMD sh -c 'exec gunicorn -w 2 -b 0.0.0.0:${PORT} \
  --access-logfile - --error-logfile - --log-level info app:app'

