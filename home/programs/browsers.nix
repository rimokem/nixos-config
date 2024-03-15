{
  pkgs,
  config,
  ...
}: {
  home.packages = [pkgs.vivaldi];
  programs = {
    firefox = {
      enable = true;
      profiles.ryan = {};
    };
  };
}