FROM python:3.8.1

MAINTAINER Hyokeun Jeon <hyokeun@gmail.com>

RUN apt update

WORKDIR /project

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
