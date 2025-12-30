{ ... }:

let
  colors = import ../theme/colors.nix;
in
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
        height = 36;
        spacing = 4;

        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "tray"
          "pulseaudio"
          "network"
          "custom/power"
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
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            default = "";
            active = "";
            urgent = "";
          };
          on-scroll-up = "hyprctl dispatch workspace e-1";
          on-scroll-down = "hyprctl dispatch workspace e+1";
        };

        "tray" = {
          icon-size = 18;
          spacing = 10;
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
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
          on-click = "pavucontrol";
        };

        "network" = {
          format-wifi = "󰤨";
          format-ethernet = "󰈀";
          format-disconnected = "󰤭";
          tooltip-format = "{ifname} via {gwaddr}";
          tooltip-format-wifi = "{essid} ({signalStrength}%)";
          tooltip-format-ethernet = "{ipaddr}/{cidr}";
          tooltip-format-disconnected = "Disconnected";
        };

        "clock" = {
          format = "{:%H:%M}";
          tooltip-format = "<tt>{calendar}</tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            weeks-pos = "right";
            on-scroll = 1;
            format = {
              months = "<span color='#${colors.primary}'><b>{}</b></span>";
              days = "<span color='#${colors.foreground}'><b>{}</b></span>";
              weeks = "<span color='#${colors.secondary}'><b>W{}</b></span>";
              today = "<span color='#${colors.alert}'><b><u>{}</u></b></span>";
            };
          };
        };

        "custom/power" = {
          format = "⏻";
          tooltip = false;
          on-click = "wlogout --protocol layer-shell";
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
        min-height: 0;
        font-weight: bold;
      }

      window#waybar {
        background: #${colors.background};
        color: #${colors.foreground};
        border-bottom: 2px solid #${colors.background_alt};
      }

      tooltip {
        background: #${colors.background_alt};
        border: 1px solid #${colors.primary};
        border-radius: 4px;
      }

      #workspaces button {
        padding: 0 5px;
        color: #${colors.disabled};
      }

      #workspaces button.active {
        color: #${colors.foreground};
      }

      #workspaces button.urgent {
        color: #${colors.alert};
      }

      #workspaces button:hover {
        background: transparent;
        color: #${colors.secondary};
        box-shadow: none;
      }

      #window,
      #clock,
      #battery,
      #pulseaudio,
      #network,
      #tray,
      #custom-power {
        padding: 0 10px;
        margin: 0 4px;
      }

      #clock {
        color: #${colors.foreground};
      }

      #pulseaudio {
        color: #${colors.foreground};
      }

      #pulseaudio.muted {
        color: #${colors.disabled};
      }

      #network {
        color: #${colors.foreground};
      }

      #network.disconnected {
        color: #${colors.alert};
      }

      #custom-power {
        color: #${colors.alert};
        margin-right: 15px;
      }
    '';
  };
}
