{ config, pkgs, ... }:

{
    services.grafana = {
        enable = true;
        port = 3000;
        domain = "localhost";
        protocol = "http";
        dataDir = "/var/lib/grafana";
    };

    services.nginx.virtualHosts."grafana.indexyz.me" = {
        forceSSL = true;

        # Over Cloudflare, not sign with acme
        useACMEHost = "example.com";

        locations = {
            "/" = {
                proxyPass = "http://127.0.0.1:3000";
                proxyWebsockets = true;
            };
        };
    };
}
