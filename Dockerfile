FROM python:3.12.10
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt