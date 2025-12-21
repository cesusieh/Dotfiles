{ ... }:

let
  accent = "rgb(be95ff)";
  text = "rgb(f2f4f8)";
  background_input = "rgba(22, 22, 22, 0.8)";
  error_color = "rgb(ee5396)";

  wall = "~/Imagens/Wallpapers/blossom.jpeg";
in
{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        no_fade_in = false;
        grace = 0;
        disable_loading_bar = true;
      };

      background = [
        {
          monitor = "";
          path = wall;
          blur_passes = 3;
          blur_size = 5;
          noise = 0.0117;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0.0;
          color = "rgb(161616)";
        }
      ];

      label = [
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%H:%M")"'';
          color = text;
          font_size = 75;
          font_family = "Cantarell ExtraBold";
          position = "0, 100";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%A, %d de %B")"'';
          color = text;
          font_size = 20;
          font_family = "Cantarell Regular";
          position = "0, 10";
          halign = "center";
          valign = "center";
        }
      ];

      image = [
        {
          monitor = "";
          path = "~/.face.icon";
          size = 120;
          border_size = 2;
          border_color = accent;
          position = "0, -80";
          halign = "center";
          valign = "center";
        }
      ];

      "input-field" = [
        {
          monitor = "";
          size = "280, 50";
          outline_thickness = 2;
          dots_size = 0.25;
          dots_spacing = 0.2;
          dots_center = true;
          dots_rounding = -1;

          outer_color = "rgba(0, 0, 0, 0)";
          inner_color = background_input;
          font_color = text;
          fade_on_empty = true;

          placeholder_text = "<i>Senha...</i>";
          rounding = 12;
          check_color = accent;
          fail_color = error_color;

          position = "0, -180";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
