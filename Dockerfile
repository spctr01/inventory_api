FROM python:3.13.0a6
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt