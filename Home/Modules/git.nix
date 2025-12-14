{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "cesusieh";
    userEmail = "cesux3@gmail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };

  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
  };
}