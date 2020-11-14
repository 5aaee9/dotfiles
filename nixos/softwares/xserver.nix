{ config, pkgs, ... }:

{
    services.xserver = {
        enable = true;

        modules = [ pkgs.xorg.xf86videofbdev ];
    
        desktopManager = {
            xterm.enable = false;
        };

        displayManager = {
            defaultSession = "none+i3";
            # set for debug
            xserverArgs = [ "-logfile" "/var/log/X.log" ];
        };

        libinput = {
            enable = true;
            naturalScrolling = false;
        };
    };
    networking.networkmanager.enable = true;
}
