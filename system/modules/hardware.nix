{ ... }:

{
  # Network
  networking.hostName = "Robson";
  networking.networkmanager.enable = true;

  # networking.firewall.allowedTCPPorts = [ 80 443 ];

  # Storage
  fileSystems."/home/carlinhos/HD" = {
    device = "/dev/disk/by-uuid/8e1dbbc0-86be-4649-8960-01b48eddd9bd";
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
