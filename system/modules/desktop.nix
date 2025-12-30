{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  #   theme = "...";
  # };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

    config = {
      common = {
        default = [
          "hyprland"
          "gtk"
        ];
      };
    };
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
  ];
}
