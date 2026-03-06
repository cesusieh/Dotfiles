{ ... }:

{
  # Network
  networking.hostName = "Robson";
  networking.networkmanager.enable = true;

  # networking.firewall.allowedTCPPorts = [ 80 443 ];

  # Storage
  fileSystems."/home/carlinhos/Games/HD" = {
    device = "/dev/disk/by-uuid/7a7a9259-f52c-4f3e-bc6f-e1b40f25e21e";
    fsType = "ext4";
    options = [
      "defaults"
      "nofail"
    ];
  };

  services.gvfs.enable = true;

  # Audio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  services.xserver.videoDrivers = [ "amdgpu" ];
}
