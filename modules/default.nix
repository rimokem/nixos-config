{ config, pkgs, ... }:

{
  imports = [
    ./bluetooth.nix
    ./fcitx5.nix
    ./fonts.nix
    ./i18n.nix
    ./i3.nix
    ./network.nix
    ./nix.nix
    ./shell.nix
    ./sound.nix
    # ./steam.nix
  ];
}
