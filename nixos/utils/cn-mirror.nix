{ config, pkgs, ... }:

{
    nix.binaryCaches = [
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];
}
