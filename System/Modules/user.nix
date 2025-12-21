{ pkgs, ... }:

{
  users.users.carlinhos = {
    isNormalUser = true;
    description = "Carlos";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];

    shell = pkgs.zsh;
  };
}
