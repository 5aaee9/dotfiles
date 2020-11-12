{ config, pkgs, ... }:

{
    services.xserver.videoDrivers = [ "hyperv_fb" ];
    networking.nameservers = [
        "8.8.8.8"
        "114.114.114.114"
    ];
}