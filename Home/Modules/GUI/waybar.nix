{ ... }:

{
  programs.waybar = {
    enable = true;

    systemd = {
      enable = true;
      target = "hyprland-session.target";
    };

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        output = [ "DP-1" ];
        height = 36;
        spacing = 8;

        modules-left = [
          "hyprland/window"
          "hyprland/workspaces"
        ];

        modules-center = [ ];

        modules-right = [
          "tray"
          "pulseaudio"
          "network"
          "clock"
        ];

        "hyprland/window" = {
          format = "";
          icon = true;
          icon-size = 20;
          tooltip = "{class}";
        };

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            default = "";
            active = "";
            urgent = "";
          };
        };

        "tray" = {
          icon-size = 18;
          spacing = 10;
        };

        "pulseaudio" = {
          format = "{icon}";
          format-muted = "󰝟";

          format-icons = {
            default = [
              "󰕿"
              "󰖀"
              "󰕾"
            ];
            headphones = "󰋋";
            headset = "󰋎";
          };

          tooltip = true;
          tooltip-format = "{volume}%";
          on-click = "pavucontrol";
          scroll-step = 5;
        };

        "network" = {
          format = "{icon}";
          format-wifi = "󰤨";
          format-ethernet = "󰈀";
          format-disconnected = "󰤭";
          format-linked = "󰤩";

          tooltip = true;
          tooltip-format-wifi = "{essid}\n{signalStrength}%";
          tooltip-format-ethernet = "{ifname}\n{ipaddr}";
          tooltip-format-disconnected = "Sem rede";
        };

        "clock" = {
          format = "󰥔  {:%H:%M}";
          tooltip = true;
          tooltip-format = "{:%A, %d/%m/%Y}";
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", "JetBrainsMono NF";
        font-size: 12px;
        min-height: 0;
      }

      window#waybar {
        background: #161616;
        color: #dde1e6;
        border-bottom: 1px solid #262626;
      }

      #window,
      #workspaces,
      #tray,
      #pulseaudio,
      #network,
      #clock {
        background: transparent;
        padding: 0 10px;
        margin: 6px 4px;
        border-radius: 0;
      }

      #workspaces {
        padding: 0;
      }

      #workspaces button {
        all: unset;
        padding: 0 6px;
        margin: 0 2px;
        color: #a7a7a7;
        transition: none;
      }

      #workspaces button:hover {
        background: transparent;
        box-shadow: none;
      }

      #workspaces button.active {
        color: #82cfff;
      }

      #workspaces button.urgent {
        color: #ff7eb6;
      }

      #pulseaudio {
        color: #42be65;
      }

      #pulseaudio.muted {
        color: #ff7eb6;
      }

      #network {
        color: #82cfff;
      }

      #network.disconnected {
        color: #ff7eb6;
      }

      #clock {
        color: #33b1ff;
      }

      tooltip {
        background: #1f1f1f;
        border: 1px solid #262626;
        border-radius: 8px;
        padding: 6px 8px;
      }

      tooltip label {
        color: #dde1e6;
      }
    '';
  };
}
