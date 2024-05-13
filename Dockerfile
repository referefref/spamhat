FROM debian:buster

LABEL maintainer="@referefref"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git gcc build-essential perl wget mariadb-server carton

WORKDIR /root

RUN git clone https://github.com/miguelraulb/spamhat.git
WORKDIR /root/spamhat

RUN carton install --deployment

EXPOSE 25/tcp
