{ config, pkgs, ... }:

let
    clashDir = "/home/indexyz/Documents/ClashManagement/";
    profileName = "Online";
in {
    environment.systemPackages = with pkgs; [
        nodejs
        yarn
        python2
    ];

    systemd.services.clash = {
        description = "Clash Management Process";
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];

        serviceConfig = {
            PermissionsStartOnly = true;
            Type = "simple";
            ExecStart = "/run/current-system/sw/bin/yarn run start clash:daemon -f ${profileName}";
            User = "indexyz";
            WorkingDirectory = clashDir;
            Restart = "always";
        };
    };


    networking.proxy.default = "http://127.0.0.1:8888/";
    networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
