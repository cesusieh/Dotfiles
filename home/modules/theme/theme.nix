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
    name = "MoreWaita";
    package = pkgs.morewaita-icon-theme;

    # name = "Adwaita";
    # package = pkgs.adwaita-icon-theme;
  };
in
{
  home.packages = [
    gtkTheme.package
    cursorTheme.package
    iconTheme.package
  ];

  gtk = {
    enable = true;
    theme = {
      name = gtkTheme.name;
      package = gtkTheme.package;
    };
    iconTheme = {
      name = iconTheme.name;
      package = iconTheme.package;
    };
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
    size = cursorTheme.size;
    package = cursorTheme.package;
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
