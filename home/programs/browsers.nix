{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs;[vivaldi librewolf];
  programs = {
    firefox = {
      enable = true;
      profiles.kento = {};
    };
  };
}
