{ config, pkgs, ... }:

{
    imports = [
        ../softwares/ssh.nix
    ];

    # QEMU Guest agent
    services.qemuGuest.enable = true;

    # Cloud-Init
    services.cloud-init.enable = true;
    services.cloud-init.ext4.enable = true;
}
