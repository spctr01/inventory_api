FROM python:3.10.0b4
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt