{ ... }:

{
  programs.zed-editor = {
    enable = true;

    # Not working...
    # extensions = [
    #   "Oxocarbon (IBM Theme) Theme"
    #   "Bearded Icon Theme"
    #   "Nix"
    # ];

    userSettings = {
      "buffer_font_family" = "JetBrainsMono Nerd Font";
      "buffer_font_size" = 16.0;

      "icon_theme" = "Bearded Icon Theme";
      "theme" = {
        "mode" = "dark";
        "light" = "One Light";
        "dark" = "Oxocarbon Dark (Variation III)";
      };

      "terminal" = {
        "blinking" = "on";
        "cursor_shape" = "bar";
      };

      "disable_ai" = true;
    };
  };
}
