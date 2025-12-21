{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    # AGS
    inputs.my-shell.packages.${pkgs.system}.default

    # GUI programs
    google-chrome
    nautilus
    wl-clipboard

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
