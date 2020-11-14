{ config, pkgs, ... }:

let secrets = import ../secrets/prometheus.nix; in
{
    environment.etc."prometheus.exporter.yaml".text = ''
        basic_auth_users:
            indexyz: ${secrets.node-pass-hash}
    '';

    services.prometheus.exporters.node = {
        enable = true;
        enabledCollectors = [
            "logind"
            "systemd"
        ];

        disabledCollectors = [
            "textfile"
        ];

        extraFlags = [
            "--web.config=/etc/prometheus.exporter.yaml"
        ];
    };
}