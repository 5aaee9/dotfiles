{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./softwares/i3.nix
        ./softwares/xserver.nix
        ./desktop/fonts.nix
        ./utils/unstable.nix
    ];

    nix.binaryCaches = [
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.usePredictableInterfaceNames = false;
    networking.networkmanager.enable = true;

    time.timeZone = "Asia/Shanghai";

    networking.useDHCP = false;
    networking.interfaces.eth0.useDHCP = true;

    i18n.defaultLocale = "en_US.UTF-8";

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        wget
        git
        sakura
        clash
        tmux
        unstable.vscode
        rofi
        krusader
        breeze-icons
        bitwarden
        firefox
        neofetch
        htop
        slack
        unstable.tdesktop
    ];

    programs.qt5ct.enable = true;
    programs.fish.enable = true;
    programs.nm-applet.enable = true;

    services.gnome3.gnome-keyring.enable = true;

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

    system.stateVersion = "20.09";
}

