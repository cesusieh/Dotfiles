{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common = {
      default = "*";
    };
  };

  # Login manager
  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  # };
}
