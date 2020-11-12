{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./softwares/i3.nix
    ];

    nix.binaryCaches = [
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];
    
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.usePredictableInterfaceNames = false;
    networking.hostName = "IndexyzLaptop";
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
    ];
    
    services.xserver = {
        enable = true;

        modules = [ pkgs.xorg.xf86videofbdev ];
    
        desktopManager = {
            xterm.enable = false;
        };

        displayManager = {
            defaultSession = "none+i3";
            # set for debug
            xserverArgs = [ "-logfile" "/var/log/X.log" ];
        };

        libinput = {
            enable = true;
            naturalScrolling = true;
        };
    };

    fonts = {
        enableDefaultFonts = true;
        fontconfig.enable = true;
        enableFontDir = true;
        enableGhostscriptFonts = true;
        
        fonts = with pkgs; [
            noto-fonts
            noto-fonts-cjk
            noto-fonts-emoji
            wqy_microhei
            wqy_zenhei
            cascadia-code
            iosevka
        ];
    };
    
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

