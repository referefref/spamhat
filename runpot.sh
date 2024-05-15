#!/bin/sh

service mysql start
sleep 10
perl -I /root/spamhat/ -I /root/spamhat/local/lib/perl5/ /root/spamhat/spampot-ng.pl
