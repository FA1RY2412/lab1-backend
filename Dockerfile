
FROM python:3.11.3-slim-bullseye


WORKDIR /app


COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt


ARG REBUILD=5


COPY . /app


ENV FLASK_APP=app
ENV FLASK_ENV=production


CMD ["flask", "run", "--host=0.0.0.0", "--port", "$PORT"]
