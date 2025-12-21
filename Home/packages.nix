{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI programs
    google-chrome
    nautilus

    # CLI tools
    fastfetch
    btop
    eza
    bat

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
