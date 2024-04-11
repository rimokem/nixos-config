
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    libsForQt5.okular
    slack
    spotify
    todoist-electron
    vmpk
  ];
}
