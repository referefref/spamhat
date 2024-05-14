FROM debian:buster

LABEL maintainer="@referefref"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git gcc build-essential perl wget mariadb-server carton

WORKDIR /root

RUN git clone https://github.com/referefref/spamhat.git
WORKDIR /root/spamhat

RUN carton install && carton install --deployment

# Ensure the script has execute permissions
RUN chmod +x /root/spamhat/runpot.sh

# Start MySQL service, create database and user
RUN service mysql start && \
    /usr/bin/mysql -e "CREATE DATABASE spamhat;" && \
    /usr/bin/mysql -e "CREATE USER spamhat@localhost IDENTIFIED BY 'password';" && \
    /usr/bin/mysql -e "GRANT ALL PRIVILEGES ON spamhat.* TO spamhat@localhost;"

ENTRYPOINT ["/root/spamhat/runpot.sh"]

EXPOSE 2525/tcp
