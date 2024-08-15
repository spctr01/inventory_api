FROM python:3.11.9
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt