
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    hypnotix
    slack
    spotify
    todoist-electron
    vmpk
  ];
}
