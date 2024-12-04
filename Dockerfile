FROM python:3.14.0a2
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt