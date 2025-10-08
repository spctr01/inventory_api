FROM python:3.14.0
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt