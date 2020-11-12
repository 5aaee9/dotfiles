{ config, pkgs, lib, ... }:


let 
    mod = "Mod4"; 
in {
    # Need by i3
    environment.pathsToLink = ["/libexec"];

    services.xserver.windowManager.i3 = {
        configFile = "/etc/i3.conf";
        enable = true;
        extraPackages = with pkgs; [
            dmenu
            i3status
            i3lock
            i3blocks
        ];
    };

    environment.etc."i3.conf".text = pkgs.callPackage ./i3-config.nix {};
}