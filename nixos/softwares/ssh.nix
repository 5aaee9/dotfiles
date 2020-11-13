{ config, pkgs, ... }:

{
    services.openssh.enable = true;
    services.openssh.permitRootLogin = "yes";

    networking.firewall.allowedTCPPorts = [ 22 ];
}