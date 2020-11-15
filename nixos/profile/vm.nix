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
    services.cloud-init.config = ''
        system_info:
            distro: nixos
        users:
            - root

        disable_root: false
        preserve_hostname: false
        cloud_init_modules:
            - migrator
            - seed_random
            - bootcmd
            - write-files
            - growpart
            - resizefs

        cloud_config_modules:
            - disk_setup
            - mounts
            - set-passwords
            - runcmd

        cloud_final_modules:
            - rightscale_userdata
            - scripts-vendor
            - scripts-per-once
            - scripts-per-boot
            - scripts-per-instance
            - scripts-user
            - ssh-authkey-fingerprints
            - keys-to-console
            - final-message
            - power-state-change
    '';

    environment.etc."cloud/cloud.cfg.d/99_datastore.cfg".text = ''
        datasource:
            ConfigDrive: {}
            None: {}
        datasource_list: [ NoCloud, ConfigDrive ]
    '';
}
