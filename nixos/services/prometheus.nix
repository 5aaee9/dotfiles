{ config, pkgs, ... }:

let secrets = import ../secrets/prometheus.nix; in
{
    services.prometheus = {
        enable = true;
        scrapeConfigs = [{
            job_name = "node";
            basic_auth = {
                username = "indexyz";
                password = secrets.node-pass;
            };
            scrape_interval = "10s";
            static_configs = [{
                targets = [
                    "localhost:9100"
                ];
                labels = {
                    alias = "grafana.indexyz.me";
                };
            }];
        }];
    };

    services.nginx.virtualHosts."prometheus.indexyz.me" = {
        forceSSL = true;
        basicAuth = {
            Indexyz = secrets.web-pass;
        };

        # Over Cloudflare, not sign with acme
        useACMEHost = "example.com";

        locations = {
            "/" = {
                proxyPass = "http://127.0.0.1:9090";
                proxyWebsockets = true;
            };
        };
    };
}