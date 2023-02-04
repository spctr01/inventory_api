FROM python:3.10.9
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt