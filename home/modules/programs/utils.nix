{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    btop
    eza
    bat
    wl-clipboard

    hyprshot
    satty
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
