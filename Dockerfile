FROM python:3.8.12
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt