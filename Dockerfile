FROM python:3.11.1
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt