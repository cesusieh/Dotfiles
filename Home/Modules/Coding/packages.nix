{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nixd
    nil

    nodejs_20
    nodePackages.pnpm
    nodePackages.typescript
    nodePackages.typescript-language-server

    python311
    pipx

    podman
    podman-compose

    pgadmin4-desktopmode
  ];
}
