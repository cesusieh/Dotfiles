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
      nix-dots = "zeditor ~/Dotfiles";
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

  programs.starship = {
    enable = true;

    settings = {
      format = "$directory $container $python $git_branch $git_status$line_break$character";

      hostname = {
        ssh_only = false;
        format = "[$hostname]($style)";
        style = "bold #33b1ff";
      };

      directory = {
        disabled = false;
        truncation_length = 3;
        truncate_to_repo = false;
        format = "[$path]($style) ";
        style = "bold #be95ff";
      };

      container = {
        format = "[ $name]($style)";
        style = "bold #3ddbd9";
      };

      python = {
        format = "[$symbol$virtualenv]($style) ";
        symbol = "󰌠 ";
        style = "bold #e8a27e";
        detect_extensions = [ "py" ];
      };

      git_branch = {
        format = " [$branch]($style) ";
        style = "bold #25be6a";
      };

      git_status = {
        ahead = "⇡$count";
        behind = "⇣$count";
        diverged = "⇕";
        staged = "[+$count](bold #25be6a)";
        stashed = "[↵](#525252)";
        modified = "[!$count](bold #e8a27e)";
        untracked = "[?](#ee5396)";
        renamed = "[»](#3ddbd9)";
        deleted = "[✘](bold #ee5396)";
        style = "bold #e8a27e";
        format = "[$all_status$ahead_behind]($style)";
      };

      character = {
        success_symbol = "[~](bold #be95ff)";
        error_symbol = "[~](bold #ee5396)";
      };
    };
  };
}
