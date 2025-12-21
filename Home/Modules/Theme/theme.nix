{ pkgs, ... }:

let
  carbonfoxPkg = pkgs.nightfox-gtk-theme.override {
    colorVariants = [ "dark" ];
    tweakVariants = [ "carbonfox" ];
  };
in
{
  home.packages = with pkgs; [
    carbonfoxPkg
    bibata-cursors
    dconf
    adwaita-icon-theme
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Nightfox-Dark-Carbonfox";
      icon-theme = "Adwaita";
      cursor-theme = "Bibata-Modern-Classic";
    };
  };

  gtk = {
    enable = true;

    theme = {
      name = "Nightfox-Dark-Carbonfox";
      package = carbonfoxPkg;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 24;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "adwaita-dark";
  };
}
