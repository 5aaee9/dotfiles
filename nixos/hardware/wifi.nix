{ config, pkgs, ... }:

{
    networking.wireless.iwd.enable = true;
    networking.networkmanager.wifi.backend = "iwd";
    networking.interfaces.wlan0.useDHCP = true;
}
