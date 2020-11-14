{ config, pkgs, ... }:

{
    security.acme = {
        acceptTerms = true;
        email = "acme@indexyz.me";
        preliminarySelfsigned = true;
        certs = {
            # Fake cert with example.com
            "example.com" = {
                server = "http://127.0.0.1";
                # Magic to skip lego sign key
                extraLegoFlags = ["-h"];
                group = "nginx";
            };
        };
    };
}