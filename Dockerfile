FROM python:3.10.11
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt