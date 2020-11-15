{ config, pkgs, ... }:

{
    imports = [
        ../softwares/ssh.nix
        ../utils/unstable.nix
    ];

    # QEMU Guest agent
    services.qemuGuest.enable = true;

    # Cloud-Init
    services.cloud-init.enable = true;
    environment.etc."cloud/cloud.cfg.d/99_datastore.cfg".text = ''
        datasource:
            ConfigDrive: {}
            None: {}
        datasource_list: [ NoCloud, ConfigDrive ]
    '';
}
