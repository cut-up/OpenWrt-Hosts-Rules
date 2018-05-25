#!/bin/bash
url='/root/hosts/url.txt'
hosts='/root/hosts/hosts.txt'
tmp=$(for var in $(cat "$url"); do wget "$var" -O - -q; done)
echo "$tmp" | egrep -v '^$|^[[:space:]]|^#' | sort -u > "$hosts"
/etc/init.d/dnsmasq restart