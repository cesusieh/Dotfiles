{ lib, ... }:

let
  files = builtins.readDir ./.;

  filterNodes =
    name: type:
    let
      isNixFile = type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix";
      isDirectory = type == "directory";
      isNotHidden = !lib.hasPrefix "." name;
      isNotIgnored = name != "AGS";
    in
    (isNixFile || isDirectory) && isNotHidden && isNotIgnored;

  validNodes = lib.filterAttrs filterNodes files;
in
{
  imports = map (name: ./. + "/${name}") (builtins.attrNames validNodes);
}
