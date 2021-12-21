FROM python:3.7.10
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt