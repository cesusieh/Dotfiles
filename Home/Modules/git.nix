{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "cesusieh"; 
        email = "cesux3@gmail.com";
      };

      init.defaultBranch = "main";
      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };

programs.ssh = {
    enable = true;
    
    matchBlocks = {
      "*" = {
        addKeysToAgent = "yes";
      };
    };
  };
}