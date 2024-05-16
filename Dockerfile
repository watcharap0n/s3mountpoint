FROM python:3.11-slim

USER root

RUN apt-get update \
    && apt-get install gcc -y \
    && apt-get install -y curl \
    && apt-get install wget gpg -y \
    && apt-get clean

WORKDIR install

RUN wget https://s3.amazonaws.com/mountpoint-s3-release/latest/x86_64/mount-s3.deb

RUN apt-get install -y ./mount-s3.deb

WORKDIR /s3-drive

WORKDIR /app

ADD main.py .
ADD entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh", "python3", "-u", "main.py"]