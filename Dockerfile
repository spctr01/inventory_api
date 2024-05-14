FROM python:3.10.14
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt