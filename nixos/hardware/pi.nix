{ config, pkgs, ... }:

{
    boot.loader.grub.enable = false;
    boot.loader.raspberryPi = {
        enable = true;
        version = 4;
    };
    boot.kernelPackages = pkgs.linuxPackages_rpi4;

    # ttyAMA0 is the serial console broken out to the GPIO
    boot.kernelParams = [
        "console=ttyAMA0,115200"
        "console=tty1"
    ];

    # Required for the Wireless firmware
    hardware.enableRedistributableFirmware = true;
}