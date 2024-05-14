#!/bin/sh

mysqld_safe
perl -I /root/spamhat/ -I /root/spamhat/local/lib/perl5/ spampot-ng.pl
