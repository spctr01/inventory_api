FROM python:3.13.5
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt