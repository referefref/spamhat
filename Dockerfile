FROM debian:buster

LABEL maintainer="@referefref"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git gcc build-essential perl wget mariadb-server carton

WORKDIR /root

RUN git clone https://github.com/miguelraulb/spamhat.git
WORKDIR /root/spamhat

RUN carton install --deployment

RUN service mysql start && \
    /usr/bin/mysql -e "CREATE DATABASE spamhat;" && \
    /usr/bin/mysql -e "CREATE USER spamhat@localhost IDENTIFIED BY 'spamhat';" && \
    /usr/bin/mysql -e "GRANT ALL PRIVILEGES ON spamhat.* TO spamhat@localhost;"

EXPOSE 25/tcp
