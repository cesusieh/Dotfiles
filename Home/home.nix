{ config, pkgs, ... }:

{
  imports = [
    ./Modules
  ];

  home.username = "carlinhos";
  home.homeDirectory = "/home/carlinhos";

  home.packages = with pkgs; [
    fastfetch 
    btop      
    eza
    bat

    pamixer
    pavucontrol

    google-chrome
    vscode

    unzip
  ];

  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha"; 
    settings = {
       window_padding_width = 10;
       font_family = "Fira Code";
    };
  };

  home.stateVersion = "25.11"; 
  programs.home-manager.enable = true;
}