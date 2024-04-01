
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    planify
    slack
    spotify
    todoist-electron
    vmpk
  ];
}
