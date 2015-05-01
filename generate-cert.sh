#!/bin/sh

if [ ! -d files ]; then mkdir files; fi

openssl req -x509 -newkey rsa:2048 -keyout files/site.key -out files/site.crt -days 365 -nodes
