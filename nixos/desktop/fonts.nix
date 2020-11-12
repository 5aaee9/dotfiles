{ config, pkgs, ... }:

{
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
}