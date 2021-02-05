#!/usr/local/bin/fish

export NONINTERACTIVE="yes"
curl -L https://get.oh-my.fish | fish

omf install proxy

echo "
set proxy_host 127.0.0.1:7890
set proxy_auth false
" > $OMF_CONFIG/before.init.fish
