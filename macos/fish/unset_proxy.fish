function unset_proxy
  for proxy in ALL_PROXY FTP_PROXY HTTPS_PROXY HTTP_PROXY all_proxy ftp_proxy http_proxy https_proxy
    set -e $proxy
  end
end
