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
        "systemctl --user restart waybar"
        "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
      ];

      env = [
        "HYPRCURSOR_THEME,Bibata-Modern-Classic"
        "XCURSOR_THEME,Bibata-Modern-Classic"

        "HYPRCURSOR_SIZE,24"
        "XCURSOR_SIZE,24"

        "HYPRSHOT_DIR,/home/carlinhos/Pictures/Screenshots"

        "GTK_USE_PORTAL,1"
        "GDK_BACKEND,wayland,x11,*"
        "QT_QPA_PLATFORM,wayland"
        # "QT_QPA_PLATFORMTHEME,gtk3"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
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
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
