FROM python:3.13.3
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt