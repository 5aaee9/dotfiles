{ config, pkgs, ... }:

{
    boot.loader.grub.enable = false;
    boot.loader.raspberryPi = {
        enable = true;
        version = 4;
    };
    boot.kernelPackages = pkgs.linuxPackages_rpi4;
}