{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
    ];

    nix.gc.automatic = true;
    nix.gc.options = "--delete-older-than 7d";

    networking.usePredictableInterfaceNames = false;

    time.timeZone = "Asia/Shanghai";

    networking.useDHCP = false;
    networking.interfaces.eth0.useDHCP = true;

    i18n.defaultLocale = "en_US.UTF-8";

    environment.systemPackages = with pkgs; [
        wget
        git
        clash
        tmux
        neofetch
        htop
        nodejs
        yarn
        python2
        gnumake
        gcc
        binutils
        nload
        vim
    ];

    programs.fish.enable = true;

    virtualisation.podman = {
        enable = true;
        dockerCompat = true;
    };

    users.users.indexyz = {
        isNormalUser = true;
        home = "/home/indexyz";
        description = "Indexyz";
        extraGroups = [ "wheel" "networkmanager" ];
        shell = pkgs.fish;
    };

    users.users.root.shell = pkgs.fish;

    system.stateVersion = "20.09";
}

