{ config, ... }:

let
  wall1 = "${config.xdg.userDirs.pictures}/Wallpapers/gengar-rain.jpg";
in
{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [ "${wall1}" ];
      wallpaper = [
        "DP-1, ${wall1}"
        "HDMI-A-1, ${wall1}"
      ];
    };
  };
}
