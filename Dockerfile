FROM python:3.8.1

MAINTAINER Hyokeun Jeon <hyokeun@gmail.com>

RUN apt update

WORKDIR /project

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN git clone https://github.com/pbelskiy/quickbuild.git qb-api-src && \
    cd qb-api-src && pip install . && \
    cd ../ && rm -rf qb-api-src
