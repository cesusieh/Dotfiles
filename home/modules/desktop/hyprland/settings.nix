{ pkgs, ... }:

{
  imports = [
    ./visuals.nix
    ./binds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;

    settings = {
      monitor = [
        "DP-1, 1920x1080@144, auto, 1"
        "HDMI-A-1, 1920x1080@60, auto, 1"
      ];

      exec-once = [
        "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1" # Start gnome polkit
      ];

      input = {
        kb_layout = "br";
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      windowrule = [
        "suppressevent maximize, class:.*"
        "float, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"
      ];
    };
  };
}
