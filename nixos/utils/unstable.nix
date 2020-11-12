{ config, pkgs, ... }:

let 
    unstableTarball = fetchTarball https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable/nixexprs.tar.xz;
in {
    nixpkgs.config = {
        packageOverrides = pkgs: {
            unstable = import unstableTarball {
                config = config.nixpkgs.config;
            };
        };
    };
}