{ ... }:

{
  programs.starship = {
    enable = true;

    settings = {
      format = "$directory $container $python $git_branch $git_status$line_break$character";

      hostname = {
        ssh_only = false;
        format = "[$hostname]($style)";
        style = "bold blue";
      };

      directory = {
        disabled = false;
        truncation_length = 3;
        truncate_to_repo = false;
        format = "[$path]($style) ";
        style = "bold blue";
      };

      container = {
        format = "[ $name]($style)";
        style = "bold purple";
      };

      python = {
        format = "[$symbol$virtualenv]($style) ";
        symbol = "󰌠 ";
        style = "bold yellow";
        detect_extensions = [ "py" ];
      };

      git_branch = {
        format = " [$branch]($style) ";
        style = "bold green";
      };

      git_status = {
        ahead = "⇡$count";
        behind = "⇣$count";
        diverged = "⇕";
        staged = "[+$count](bold green)";
        stashed = "[↵](dimmed white)";
        modified = "[!$count](bold yellow)";
        untracked = "[?](dimmed red)";
        renamed = "[»](dimmed white)";
        deleted = "[✘](bold red)";
        style = "bold yellow";
        format = "[$all_status$ahead_behind]($style)";
      };

      character = {
        success_symbol = "[~](bold magenta)";
        error_symbol = "[~](bold red)";
      };
    };
  };
}
