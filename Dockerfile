FROM python:3.12.0a3
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt