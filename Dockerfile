FROM python:3.12.5
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt