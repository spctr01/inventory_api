FROM python:3.14.2
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt