{ ... }:

{
  fileSystems."/home/carlinhos/HD" = {
    device = "/dev/disk/by-uuid/8e1dbbc0-86be-4649-8960-01b48eddd9bd";
    fsType = "ext4";
    options = [
      "defaults"
      "nofail"
    ];
  };
}
