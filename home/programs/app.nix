
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    slack
    spotify
    todoist-electron
    vmpk
  ];
}
