FROM python:3.9.12
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt