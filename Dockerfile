FROM python:3.9.5
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt