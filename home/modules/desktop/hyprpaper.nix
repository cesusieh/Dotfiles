{ ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [ "~/Pictures/Wallpapers/gengar-rain.jpg" ];
      wallpaper = [
        "DP-1,~/Pictures/Wallpapers/gengar-rain.jpg"
        "HDMI-A-1,~/Pictures/Wallpapers/gengar-rain.jpg"
      ];
    };
  };
}
