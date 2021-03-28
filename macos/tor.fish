#!/usr/bin/env fish

mkdir -p /usr/local/etc/tor
echo "
SOCKS5Proxy 127.0.0.1:7890
SOCKSPort 9050
" >  /usr/local/etc/tor/torrc
