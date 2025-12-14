{ config, pkgs, ... }:

{
  imports = [
    Modules/git.nix
  ];

  home.username = "carlinhos";
  home.homeDirectory = "/home/carlinhos";

  home.packages = with pkgs; [
    fastfetch 
    btop      
    eza

    pamixer
    pavucontrol

    google-chrome
    vscode
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