**/etc/config/dhcp**
config dnsmasq
list addnhosts '/root/hosts/hosts.txt'

**/etc/crontabs/root**
00 00 * * * sh '/root/hosts/update.sh'