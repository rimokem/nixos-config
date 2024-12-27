{
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs;[brave];
  programs = {
    firefox = {
      enable = true;
      profiles.kento = {};
    };
  };
}
