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
      xclip
      xsel
    ];

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
    executable = true;
  };
}
