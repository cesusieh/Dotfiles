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
    wlogout

    pamixer
    pavucontrol

    file-roller
    unzip
    p7zip
    unrar
    xz
  ];
}
