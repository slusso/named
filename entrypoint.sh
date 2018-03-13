#!/bin/sh
#
exec /usr/sbin/named -4 -f -c /etc/named/named.conf -u named
