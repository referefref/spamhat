#!/bin/sh

mysqld_safe
sleep 10
perl -I /root/spamhat/ -I /root/spamhat/local/lib/perl5/ /root/spamhat/spampot-ng.pl
