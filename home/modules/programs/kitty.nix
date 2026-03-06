{ ... }:

let
  colors = import ../theme/colors.nix;
in
{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 14;
    };

    settings = {
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      disable_ligatures = "never";
      copy_on_select = "no";
      enable_audio_bell = "no";

      background_opacity = "1.0";
      background_blur = 1;
      window_padding_width = 10;
      placement_strategy = "center";

      cursor_blink_interval = "0.5";
      cursor_shape = "underline";
      cursor_underline_thickness = "1.0";
      cursor_trail = 1;
      cursor_trail_decay = "0.2 0.4";
      shell_integration = "no-cursor";

      background = "#${colors.background}";
      foreground = "#${colors.foreground}";

      selection_background = "#${colors.primary}";
      selection_foreground = "#${colors.background}";
      url_color = "#${colors.primary}";
      cursor = "#${colors.primary}";
      cursor_text_color = "#${colors.background}";

      tab_bar_style = "powerline";
      active_tab_background = "#${colors.primary}";
      active_tab_foreground = "#${colors.background}";
      inactive_tab_background = "#${colors.background_alt}";
      inactive_tab_foreground = "#${colors.primary}";

      color0 = "#${colors.black}";
      color8 = "#${colors.black_bright}";
      color1 = "#${colors.red}";
      color9 = "#${colors.red}";
      color2 = "#${colors.green}";
      color10 = "#${colors.green}";
      color3 = "#${colors.yellow}";
      color11 = "#${colors.yellow}";
      color4 = "#${colors.blue}";
      color12 = "#${colors.blue}";
      color5 = "#${colors.magenta}";
      color13 = "#${colors.magenta}";
      color6 = "#${colors.cyan}";
      color14 = "#${colors.cyan}";
      color7 = "#${colors.white}";
      color15 = "#${colors.white_bright}";
    };
  };
}
