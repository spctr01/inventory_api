FROM python:3.13.0rc2
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt