{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style

    nodejs_24
    corepack_24
    nodePackages.typescript-language-server

    python311
    uv

    podman-compose
    lazydocker

    dbeaver-bin
  ];
}
