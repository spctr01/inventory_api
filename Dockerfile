FROM python:3.8.18
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt