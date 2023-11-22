FROM python:3.10.13
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt