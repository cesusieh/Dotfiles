{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = false;

    shellAliases = {
      ls = "eza --icons";
      tree = "eza --tree --icons";
      cat = "bat";

      nix-update = "sudo nixos-rebuild switch --flake ~/Dotfiles/#Robson";
      nix-dots = "code ~/Dotfiles";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "sudo"
        "extract"
      ];
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
}
