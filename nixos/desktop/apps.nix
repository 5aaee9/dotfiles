{ config, pkgs, ... }:

{
    imports = [
        ../utils/unstable.nix
    ];

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        sakura
        unstable.vscode
        rofi
        krusader
        breeze-icons
        bitwarden
        firefox
        slack
        unstable.tdesktop
    ];
    
    programs.nm-applet.enable = true;
    programs.qt5ct.enable = true;
    
    services.gnome3.gnome-keyring.enable = true;
}