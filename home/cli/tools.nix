{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Utilities
    bat # cat alternative
    bottom # top alternative
    eza # ls alternative
    fd # find alternative
    just # task runner
    nh # nix cli helper
    nurl # generate nix fetcher
    ripgrep # grep alternative
    typos # find typos
    yazi # file manager
    zscroll

    # Archives
    unar
    unrar
    unzip
    zip
  ];
}
