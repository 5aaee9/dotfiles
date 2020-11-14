{ config, pkgs, lib, ... }:

{
    environment.systemPackages = with pkgs; [
        proxychains
    ];

    environment.etc."proxychains.conf".text = ''
        strict_chain
        proxy_dns
        remote_dns_subnet 224
        tcp_read_time_out 15000
        tcp_connect_time_out 8000

        [ProxyList]
        socks5 127.0.0.1 8888
    '';
}
