{
  pkgs,
  config,
  ...
}: {
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
  };

  home.packages = with pkgs;
    [
      gcc9
      lazygit
    ];

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
    executable = true;
  };
}
