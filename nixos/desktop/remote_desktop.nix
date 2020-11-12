{ config, pkgs, ... }:

{
    services.xrdp.enable = true;
    services.xrdp.defaultWindowManager = "${pkgs.i3}/bin/i3";
    networking.firewall.allowedTCPPorts = [ 3389 ];
}
