{ config, pkgs, ... }:

{
    imports = [
        ../softwares/ssh.nix
    ];
    boot.loader.grub.enable = true;
    boot.loader.grub.version = 2;
    boot.loader.grub.device = "/dev/sda";
}
