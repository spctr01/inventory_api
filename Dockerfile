FROM python:3.13.11
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt