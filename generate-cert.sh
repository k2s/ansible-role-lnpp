#!/bin/sh

openssl req -x509 -newkey rsa:2048 -keyout files/multi-site.key -out files/multi-site.crt -days 365 -nodes
