{ config, pkgs, ... }:

{
    imports = [
        ../softwares/ssh.nix
        ../utils/unstable.nix
    ];

    # QEMU Guest agent
    services.qemuGuest.enable = true;

    # Grow root part
    boot.growPartition = true;
}
