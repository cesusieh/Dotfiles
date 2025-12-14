{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

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

      background = "#000000";
      background_opacity = "0.8";
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

      foreground = "#dedede";
      selection_background = "#3584e4";
      selection_foreground = "#ffffff";
      url_color = "#3584e4";
      cursor = "#ffffff";
      cursor_text_color = "#000000";

      # Black 
      color0 = "#1e1e1e";
      color8 = "#5e5c64";

      # Red
      color1 = "#c01c28";
      color9 = "#f66151";

      # Green
      color2 = "#2ec27e";
      color10 = "#33d17a";

      # Yellow
      color3 = "#e5a50a";
      color11 = "#f9f06b";

      # Blue 
      color4 = "#3584e4";
      color12 = "#62a0ea";

      # Magenta
      color5 = "#c061cb";
      color13 = "#dc8add";

      # Cyan
      color6 = "#2aa1b3";
      color14 = "#99c1f1";

      # White
      color7 = "#dedede";
      color15 = "#ffffff";
    };
  };
}