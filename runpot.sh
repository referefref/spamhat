#!/bin/sh

service mysql start
/usr/bin/perl -I /root/spamhat/ -I /root/spamhat/local/lib/perl5/ /root/spamhat/spampot-ng.pl
