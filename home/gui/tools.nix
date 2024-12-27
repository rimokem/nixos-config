
{pkgs, ...}: 
{
  home.packages = with pkgs; [
    discord
    freetube
    gimp
    slack
    todoist-electron
    zoom-us
  ];
}
