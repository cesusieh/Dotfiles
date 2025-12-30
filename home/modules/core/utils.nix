{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    btop
    eza
    bat
    wl-clipboard

    # Hypr tools
    wofi
    hyprshot
    satty
    brightnessctl
    playerctl
    hyprpolkitagent

    # Audio
    pamixer
    pavucontrol

    # Compressed files
    file-roller
    unzip
    p7zip
    unrar
    xz
  ];
}
