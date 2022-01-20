FROM python:3.8.12-slim-bullseye
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt