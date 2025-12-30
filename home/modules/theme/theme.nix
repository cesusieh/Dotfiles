{ pkgs, ... }:

let
  gtkTheme = {
    name = "Nightfox-Dark-Carbonfox";
    package = pkgs.nightfox-gtk-theme.override {
      colorVariants = [ "dark" ];
      tweakVariants = [ "carbonfox" ];
    };
  };

  cursorTheme = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };

  iconTheme = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
  };
in
{
  home.packages = [
    gtkTheme.package
    cursorTheme.package
    iconTheme.package
    pkgs.libsForQt5.qt5ct
    pkgs.kdePackages.qt6ct
  ];

  gtk = {
    enable = true;
    theme = gtkTheme;
    iconTheme = iconTheme;

    cursorTheme = {
      name = cursorTheme.name;
      package = cursorTheme.package;
      size = cursorTheme.size;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
      gtk-decoration-layout = ":";
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
      gtk-decoration-layout = ":";
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "adwaita-dark";
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = cursorTheme.name;
    package = cursorTheme.package;
    size = cursorTheme.size;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = gtkTheme.name;
      icon-theme = iconTheme.name;
      cursor-theme = cursorTheme.name;
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":";
    };
  };
}
