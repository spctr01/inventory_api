FROM python:3.7.13
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt