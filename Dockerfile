FROM python:3.14.0rc1
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt