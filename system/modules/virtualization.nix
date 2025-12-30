{ ... }:

{
  virtualisation.podman = {
    enable = true;
    dockerCompat = true; # Docker alias
    defaultNetwork.settings.dns_enabled = true;
  };

  virtualisation.containers.enable = true;
  security.unprivilegedUsernsClone = true;
}
