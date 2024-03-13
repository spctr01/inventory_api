FROM python:3.13.0a4
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt