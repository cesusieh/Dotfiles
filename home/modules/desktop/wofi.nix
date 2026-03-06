{ ... }:

let
  colors = import ../theme/colors.nix;
in
{
  programs.wofi = {
    enable = true;

    settings = {
      mode = "drun";
      show = "drun";
      width = 450;
      height = 500;
      location = "center";
      prompt = "Pesquisar...";
      filter_rate = 100;
      allow_images = true;
      image_size = 24;
      no_actions = true;
      insensitive = true;
      gtk_dark = true;
      key_expand = "Tab";
      close_on_focus_loss = true;
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", monospace;
        font-size: 14px;
        font-weight: bold;
      }

      window {
        margin: 0px;
        background-color: #${colors.background};
        color: #${colors.foreground};
        border-radius: 16px;
        border: 2px solid #${colors.disabled};
      }

      #input {
        background-color: #${colors.background_alt};
        color: #${colors.foreground};
        border: 2px solid #${colors.background_alt};
        border-radius: 12px;
        margin: 15px;
        padding: 8px 12px;
        box-shadow: none;
      }

      #input:focus {
        border: 2px solid #${colors.secondary};
        box-shadow: none;
      }

      #inner-box {
        margin: 0px 10px 10px 10px;
        background-color: transparent;
      }

      #scroll {
        margin: 0px;
        border: none;
      }

      #text {
        margin: 5px;
        border: none;
        color: #${colors.foreground};
      }

      #entry {
        padding: 10px;
        margin: 2px 5px;
        border-radius: 8px;
        background-color: transparent;
      }

      #entry:selected {
        background-color: #${colors.background_alt};
        color: #${colors.background};
        outline: none;
      }

      #img {
        margin-right: 12px;
        background-color: transparent;
      }
    '';
  };
}
