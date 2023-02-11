FROM python:3.11.2
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt