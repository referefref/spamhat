#!/bin/sh

mysqld_safe &
echo "starting SpamHat"
perl -I /root/spamhat/ -I /root/spamhat/local/lib/perl5/ /root/spamhat/spampot-ng.pl
