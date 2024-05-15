# SpamHAT
SpamHAT is a Simple Open Relay Simulator for Spam Capture and Analysis written in Perl, and designed to be run on Debian with MySQL as a logging backend. The project was created by the UNAM (National Autonomous University of Mexico) chapter of the Honeynet Project in 2015 and contains a number of modules for handling different aspects of email payloads such as attachments, binaries, domains, IP addresses, subjects and URLs allowing it to respond differently to content within the email such as downloading URL payloads within the email, checking the email subject from a blocklist of patterns, generic regex parsing (emails, domains, IP addresses etc), hashing binary payloads, and storing attachments.

## Installation
```
wget https://raw.githubusercontent.com/referefref/spamhat/master/docker-compose.yaml
docker compose up -d
```

## Examples
![image](https://github.com/referefref/spamhat/assets/56499429/52a5854c-d7fb-4362-9c50-258be9561990)
![image](https://github.com/referefref/spamhat/assets/56499429/7332e72f-cd1a-454d-98f8-0f93aca641ad)


## Original Notes

Spam Honeypot Tool
==================

Simple Open Relay Simulator for Spam Capture and Analysis
---------------------------------------------------------

Feel free to ask anything or request help for development

miguelraulb at gmail dot com

### Installation Requirements on Debian (base) 6.x, 7.x
* Perl 5.10.1
* CPAN Modules
	- IO::Socket
	- Mail::MboxParser
	- LWP::Simple
	- LWP::UserAgent
	- experimental
	- DBI
	- DBD::mysql
	- Digest::MD5::File
	
* MySQL Server

Installation
Linux Debian installation [instructions](https://github.com/miguelraulb/spampot/blob/master/docs/linux_install.md)

### Execution

Once you have all the modules installed you just have to create a database called spampot or whatever you wish to name it, create a user with password and then assign the name of your database to the user you've already created.

Please set this values on the `spampot-ng.conf` file.

In order to run the tool you have to run it with sudo or using a wrapper as authbind, [here](http://mutelight.org/authbind) are the instructions

 `# sudo perl spampot-ng.pl `

 `# authbind --deep perl spampot-ng.pl `

Author
------
Miguel Raúl Bautista Soria

