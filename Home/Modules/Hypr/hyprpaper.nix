{ pkgs, ... }

{
  services.hyprpaper.settings = {
    enable = true;

    ipc = "on";
    splash = false;
    splash_offset = 2.0;

    preload = [ "~/Imagens/Wallpapers/anime-style-character-space.jpg" ];
    wallpaper = [
      "DP-1,~/Imagens/Wallpapers/anime-style-character-space.jpg"
      "HDMI-A-1,~/Imagens/Wallpapers/anime-style-character-space.jpg"
    ];
  }
}
