{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs;[vivaldi google-chrome];
  programs = {
    firefox = {
      enable = true;
      profiles.ryan = {};
    };
  };
}
