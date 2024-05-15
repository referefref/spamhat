# SpamHAT
SpamHAT is a Simple Open Relay Simulator for Spam Capture and Analysis written in Perl, and designed to be run on Debian with MySQL as a logging backend. The [***original project***](https://github.com/miguelraulb/spamhat) was created by [***Miguel Raúl Bautista Soria***](https://github.com/miguelraulb) for the UNAM (National Autonomous University of Mexico) chapter of the Honeynet Project in 2015 and contains a number of modules for handling different aspects of email payloads such as attachments, binaries, domains, IP addresses, subjects and URLs allowing it to respond differently to content within the email such as downloading URL payloads within the email, checking the email subject from a blocklist of patterns, generic regex parsing (emails, domains, IP addresses etc), hashing binary payloads, and storing attachments.

The project has been modernised with carton, MariaDB and docker for simple deployment and management.

## Installation
```
wget https://raw.githubusercontent.com/referefref/spamhat/master/docker-compose.yaml
docker compose up -d
```
## Note
The password for MariaDB is set in both the docker-compose file and the spampot-ng.conf file. If you wish to modify this, you'll need to rebuild the docker image and update the docker-compose to use your newly generated image.

## Examples
![image](https://github.com/referefref/spamhat/assets/56499429/52a5854c-d7fb-4362-9c50-258be9561990)
![image](https://github.com/referefref/spamhat/assets/56499429/7332e72f-cd1a-454d-98f8-0f93aca641ad)
