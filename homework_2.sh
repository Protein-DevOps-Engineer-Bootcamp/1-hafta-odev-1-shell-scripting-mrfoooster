#!/bin/bash
SUAN=$(df / | grep / | awk '{ print $5}'| sed 's/%//g')
LIMIT=90
MAIL=mert.c.tatar@gmail.com

if [ "$SUAN" -gt "$LIMIT" ]; then
	mail -s 'MYSYSTEM: DISK SPACE LOW' $[MAIL] <<EOF
HELLO,
YOUR DISKSPACE IS TOO LOW,
USED SPACE: $CURRENT%
EOF
fi
