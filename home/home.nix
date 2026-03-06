{ ... }:

{
  imports = [
    ./modules
  ];

  home.username = "carlinhos";
  home.homeDirectory = "/home/carlinhos";

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}
