{ pkgs, ... }:

{
  # System packages
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    vim
    btop
  ];

  # Gaming
  programs.gamemode.enable = true;

  services.udev.packages = [ pkgs.game-devices-udev-rules ];
  hardware.steam-hardware.enable = true;

  programs.steam = {
    enable = true;

    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };
}
