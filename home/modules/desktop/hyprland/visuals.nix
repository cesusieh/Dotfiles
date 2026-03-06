{ ... }:

let
  colors = import ../../theme/colors.nix;
in
{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 4;
      gaps_out = 8;
      border_size = 0;
      "col.active_border" = "rgb(${colors.primary}) rgb(${colors.secondary}) 45deg";
      "col.inactive_border" = "rgb(${colors.background_alt})";
      resize_on_border = false;
      layout = "dwindle";
    };

    decoration = {
      rounding = 4;
      rounding_power = 2;
      active_opacity = 1.0;
      inactive_opacity = 1.0;

      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        color = "rgba(${colors.background}ee)";
      };

      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        vibrancy = 0.1696;
      };
    };

    animations = {
      enabled = true;

      bezier = [
        "wind, 0.05, 0.9, 0.1, 1.05"
        "winIn, 0.1, 1, 0.1, 1"
        "winOut, 0.3, 0, 0, 1"
      ];

      # name, on/off, ms, bezier, style
      animation = [
        "fade, 0"

        "windows, 1, 5, wind, slide"
        "windowsIn, 1, 4, winIn, slide"
        "windowsOut, 1, 4, winOut, slide"
        "windowsMove, 1, 6, wind, slide"

        # "workspaces, 1, 5, wind"
        "workspaces, 1, 5, wind, slidevert"

        "layers, 1, 5, wind"
      ];
    };
  };
}
