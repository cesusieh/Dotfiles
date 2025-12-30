{ ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [ "~/Pictures/Wallpapers/anime-style-character-space.jpg" ];
      wallpaper = [
        "DP-1,~/Pictures/Wallpapers/anime-style-character-space.jpg"
        "HDMI-A-1,~/Pictures/Wallpapers/anime-style-character-space.jpg"
      ];
    };
  };
}
