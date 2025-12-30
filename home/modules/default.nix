{
  imports = [
    ./core/git.nix
    ./core/shell.nix
    ./core/utils.nix
    ./core/xdg.nix

    ./desktop/hyprland/hypridle.nix
    ./desktop/hyprland/settings.nix
    ./desktop/hyprland/hyprlock.nix
    ./desktop/hyprland/hyprpaper.nix

    ./desktop/waybar.nix
    ./desktop/wofi.nix

    ./dev/tools.nix
    ./dev/zed.nix

    ./programs/common.nix
    ./programs/kitty.nix

    ./theme/fonts.nix
    ./theme/theme.nix
  ];
}
