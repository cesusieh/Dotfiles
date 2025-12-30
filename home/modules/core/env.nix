{ ... }:

{
  home.sessionVariables = {
    # Set cursor theme
    HYPRCURSOR_THEME = "Bibata-Modern-Classic";
    XCURSOR_THEME = "Bibata-Modern-Classic";

    # Set cursor size
    HYPRCURSOR_SIZE = 24;
    XCURSOR_SIZE = 24;

    HYPRSHOT_DIR = "/home/carlinhos/Pictures/Screenshots"; # Set Hyprshot dir

    GTK_USE_PORTAL = "1"; # Forces GTK apps to use XDG Portals

    QT_QPA_PLATFORMTHEME = "gtk3"; # Makes QT apps use GTK theme
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1"; # Disable QT windows decorations
    QT_AUTO_SCREEN_SCALE_FACTOR = "1"; # Auto scales QT apps
  };
}
