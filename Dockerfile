FROM python:3.8.13
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt