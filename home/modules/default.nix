{
  imports = [
    ./core/git.nix
    ./core/shell.nix
    ./core/xdg.nix
    ./core/env.nix

    ./desktop/hyprland/hyprland.nix
    ./desktop/hypridle.nix
    ./desktop/hyprlock.nix
    ./desktop/hyprpaper.nix

    ./desktop/waybar.nix
    ./desktop/wofi.nix

    ./dev/tools.nix
    ./dev/zed.nix

    ./programs/utils.nix
    ./programs/apps.nix
    ./programs/kitty.nix

    ./theme/fonts.nix
    ./theme/theme.nix
  ];
}
