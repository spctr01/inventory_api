FROM python:3.13.0a3
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt