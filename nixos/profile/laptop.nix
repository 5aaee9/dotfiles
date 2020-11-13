{ config, pkgs, ... }:

{
    imports = [
        ../hardware/wifi.nix
        ../desktop/apps.nix
        ../desktop/fonts.nix
        ../softwares/xserver.nix
        ../softwares/i3.nix
    ];
}