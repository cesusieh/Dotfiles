{
  imports = [
    ./core/git.nix
    ./core/shell.nix
    ./core/utils.nix
    ./core/xdg.nix

    ./desktop/hyprland/hyprland.nix
    ./desktop/hypridle.nix
    ./desktop/hyprlock.nix
    ./desktop/hyprpaper.nix

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
