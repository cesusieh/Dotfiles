{ pkgs, ... }:

{
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
}
