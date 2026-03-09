{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    btop
    eza
    bat
    wl-clipboard
    killall

    hyprshot
    satty
    playerctl
    polkit_gnome
    wlogout
    hyprlauncher

    pamixer
    pavucontrol

    file-roller
    unzip
    p7zip
    unrar
    xz
  ];
}
