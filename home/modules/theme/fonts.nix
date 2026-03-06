{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    cantarell-fonts
    nerd-fonts.jetbrains-mono

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];

  fonts.fontconfig.defaultFonts = {
    monospace = [ "JetBrainsMono Nerd Font" ];
    sansSerif = [ "Cantarell" ];
    serif = [ "Cantarell" ];
    emoji = [ "Noto Color Emoji" ];
  };
}
