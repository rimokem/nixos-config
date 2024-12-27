{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs;
    [
      gcc9
      lazygit
      xclip
      xsel
    ];

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
    executable = true;
  };
}

