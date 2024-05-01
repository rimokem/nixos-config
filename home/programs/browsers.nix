{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs;[vivaldi brave];
  programs = {
    firefox = {
      enable = true;
      profiles.kento = {};
    };
  };
}
