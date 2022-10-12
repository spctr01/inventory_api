FROM python:3.7.14
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt