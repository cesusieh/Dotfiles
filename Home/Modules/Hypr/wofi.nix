{ ... }:

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

    # Tradução do seu arquivo 'style.css'
    style = ''
      window {
          background-color: rgba(30, 30, 30, 0.95);
          color: #dedede;
          border-radius: 16px;
          border: 2px solid #353535;
          font-family: "JetBrainsMono Nerd Font", monospace;
          font-size: 14px;
      }

      #input {
          background-color: #1e1e1e;
          color: #ffffff;
          border: 2px solid #3584e4;
          border-radius: 12px;
          margin: 15px;
          padding: 8px 12px;
          box-shadow: none;
      }

      #input:focus {
          box-shadow: 0 0 0 2px rgba(53, 132, 228, 0.4);
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
          color: #dedede;
      }

      #entry {
          padding: 10px;
          margin: 2px 5px;
          border-radius: 8px;
          background-color: transparent;
      }

      #entry:selected {
          background-color: #3584e4;
          color: #ffffff;
          font-weight: bold;
          outline: none;
      }

      #img {
          margin-right: 12px;
          background-color: transparent;
      }
    '';
  };
}
