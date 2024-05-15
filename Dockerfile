FROM debian:buster

LABEL maintainer="@referefref"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git gcc build-essential perl wget carton mariadb-client

WORKDIR /root

RUN git clone https://github.com/referefref/spamhat.git
WORKDIR /root/spamhat

RUN carton install && carton install --deployment

# Ensure the scripts have execute permissions
RUN chmod +x /root/spamhat/runpot.sh
RUN chmod +x /root/spamhat/init-and-run.sh

ENTRYPOINT ["/root/spamhat/init-and-run.sh"]

EXPOSE 2525/tcp
