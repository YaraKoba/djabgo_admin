FROM python:3.9-alpine3.16


COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /tmp/requirements.txt

RUN adduser --disabled-password service-user

COPY service /service
WORKDIR service
EXPOSE 8000




USER service-user