{ config, pkgs, ... }:

let 
    unstableTarball = fetchTarball https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable/nixexprs.tar.xz;
in {
    nixpkgs.config = let unstable = import unstableTarball; in {
        packageOverrides = pkgs: {
            unstable = unstable {
                config = config.nixpkgs.config;
            };
            cloud-init = (unstable {}).cloud-init;
            cloud-utils = (unstable {}).cloud-utils;
        };
    };
}