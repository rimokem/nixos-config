
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    spotify
    freetube
    vmpk
  ];
}
