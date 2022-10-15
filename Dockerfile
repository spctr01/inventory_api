FROM python:3.10.7
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt