{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    adw-gtk3 
    papirus-icon-theme 
    bibata-cursors 
  ];

  gtk = {
    enable = true;
    
    theme = {
      name = "adw-gtk3-dark"; 
      package = pkgs.adw-gtk3;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Ice";
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
    name = "Bibata-Modern-Ice";
    size = 24;
  };
  
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "adwaita-dark";
  };
}