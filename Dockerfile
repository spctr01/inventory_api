FROM python:3.13.0b4
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt