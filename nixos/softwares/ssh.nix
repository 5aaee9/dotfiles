{ config, pkgs, ... }:

{
    services.openssh.enable = true;
    services.openssh.permitRootLogin = "yes";

    networking.firewall.allowedTCPPorts = [ 22 ];

    users.users = {
        root.openssh.authorizedKeys.keys = import ./ssh/indexyz.nix ++ import ./ssh/zero.nix;
        indexyz.openssh.authorizedKeys.keys = import ./ssh/indexyz.nix;
    };
}
