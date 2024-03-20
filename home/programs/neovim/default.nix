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

  home.packages = with pkgs; [gcc9];

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
    executable = true;
  };
}
