{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./softwares/i3.nix
        ./softwares/xserver.nix
        ./desktop/fonts.nix
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

    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    i18n.defaultLocale = "en_US.UTF-8";

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        chromium
        wget
        git
        sakura
        clash
        tmux
        vscode
        rofi
        krusader
        breeze-icons
        bitwarden
        firefox
    ];
    
    programs.qt5ct.enable = true;
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
    
    system.stateVersion = "20.09";
}

