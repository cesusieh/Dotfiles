{ ... }:

{
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1"; # Force Electron apps to use Wayland

    # Set Wayland priority
    GDK_BACKEND = "wayland,x11,*";
    QT_QPA_PLATFORM = "wayland;xcb";
  };
}
