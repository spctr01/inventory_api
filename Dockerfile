FROM python:3.11.5
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt