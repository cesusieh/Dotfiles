{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  nix = {
    # Nix features
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    # Garbage collector
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Users
  users.users.carlinhos = {
    isNormalUser = true;
    description = "Carlos";
    extraGroups = [
      "networkmanager"
      "wheel"
      "podman"
    ];
    shell = pkgs.zsh;
  };

  # Envs
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1"; # Force Electron apps to use Wayland

    # Set Wayland priority (GDK & QT)
    GDK_BACKEND = "wayland,x11,*";
    QT_QPA_PLATFORM = "wayland;xcb";
  };

  # Localization
  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  console.keyMap = "br-abnt2";

  services.xserver.xkb = {
    layout = "br";
  };
}
