{ config, pkgs, ... }:

let
    clashDir = "/home/indexyz/Documents/ClashManagement/";
    profileName = "Online";
in {
    systemd.services.clash = {
        description = "Clash Management Process";
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];

        serviceConfig = {
            PermissionsStartOnly = true;
            Type = "simple";
            ExecStart = "/run/current-system/sw/bin/yarn run start clash:daemon -l -f ${profileName}";
            User = "indexyz";
            WorkingDirectory = clashDir;
            Restart = "always";
        };
    };


    networking.proxy.default = "http://127.0.0.1:8888/";
    networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    networking.firewall.allowedTCPPorts = [ 7890 8888 ];
}
