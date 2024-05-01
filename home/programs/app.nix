
{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    discord-canary
    freetube
    gimp
    guitarix
    libsForQt5.okular
    slack
    spotify
    todoist-electron
    vmpk
  ];
}
