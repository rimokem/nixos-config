
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    spotify
    todoist-electron
    vmpk
  ];
}
