{ config, pkgs, ... }:

{
    imports = [
        ../softwares/ssh.nix
    ];
    services.qemuGuest.enable = true;
}