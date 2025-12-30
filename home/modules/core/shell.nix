{ config, ... }:

let
  colors = import ../theme/colors.nix;
in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      ls = "eza --icons --group-directories-first";
      ll = "eza -l --icons --group-directories-first";
      la = "eza -la --icons --group-directories-first";
      tree = "eza --tree --icons --group-directories-first";
      cat = "bat";

      nix-update = "sudo nixos-rebuild switch --flake ~/Dotfiles#$(hostname)";
      nix-clean = "sudo nix-collect-garbage -d";
      conf = "zeditor ~/Dotfiles";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "extract"
      ];
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
      ignoreDups = true;
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      format = "$directory$container$python$git_branch$git_status$line_break$character";

      hostname = {
        ssh_only = false;
        format = "[$hostname]($style)";
        style = "bold #${colors.secondary}";
      };

      directory = {
        disabled = false;
        truncation_length = 3;
        truncate_to_repo = false;
        format = "[$path]($style) ";
        style = "bold #${colors.primary}";
      };

      container = {
        format = "[ $name]($style)";
        style = "bold #${colors.cyan}";
      };

      python = {
        format = "[$symbol$virtualenv]($style) ";
        symbol = "󰌠 ";
        style = "bold #${colors.yellow}";
        detect_extensions = [ "py" ];
      };

      git_branch = {
        format = " [$branch]($style) ";
        style = "bold #${colors.green}";
      };

      git_status = {
        ahead = "⇡$count";
        behind = "⇣$count";
        diverged = "⇕";
        staged = "[+$count](bold #${colors.green})";
        stashed = "[↵](#${colors.disabled})";
        modified = "[!$count](bold #${colors.yellow})";
        untracked = "[?](#${colors.alert})";
        renamed = "[»](#${colors.cyan})";
        deleted = "[✘](bold #${colors.alert})";
        style = "bold #${colors.yellow}";
        format = "[$all_status$ahead_behind]($style)";
      };

      character = {
        success_symbol = "[󱄅](bold #${colors.primary})";
        error_symbol = "[󱄅](bold #${colors.alert})";
      };
    };
  };
}
