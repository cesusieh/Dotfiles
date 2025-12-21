{ ... }:

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

      background = "#161616";
      foreground = "#f2f4f8";

      background_opacity = 1;
      background_blur = 1;

      window_padding_width = 10;
      placement_strategy = "center";

      copy_on_select = "no";
      enable_audio_bell = "no";

      cursor_blink_interval = "0.5";
      cursor_shape = "underline";
      cursor_shape_unfocused = "unchanged";
      cursor_underline_thickness = "1.0";
      cursor_trail = 1;
      cursor_trail_decay = "0.2 0.4";
      cursor_trail_start_threshold = 0;
      shell_integration = "no-cursor";

      selection_background = "#be95ff";
      selection_foreground = "#161616";

      url_color = "#be95ff";

      cursor = "#be95ff";
      cursor_text_color = "#161616";

      tab_bar_style = "powerline";
      active_tab_background = "#be95ff";
      active_tab_foreground = "#161616";
      inactive_tab_background = "#262626";
      inactive_tab_foreground = "#be95ff";

      # Black
      color0 = "#161616";
      color8 = "#262626";

      # Red
      color1 = "#ee5396";
      color9 = "#ee5396";

      # Green
      color2 = "#25be6a";
      color10 = "#25be6a";

      # Yellow
      color3 = "#e8a27e";
      color11 = "#e8a27e";

      # Blue
      color4 = "#33b1ff";
      color12 = "#33b1ff";

      # Magenta
      color5 = "#be95ff";
      color13 = "#be95ff";

      # Cyan
      color6 = "#3ddbd9";
      color14 = "#3ddbd9";

      # White
      color7 = "#f2f4f8";
      color15 = "#ffffff";
    };
  };
}
