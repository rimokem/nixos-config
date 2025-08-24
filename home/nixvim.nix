{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.tokyonight.enable = true;
    opts = {
      number = true;
    };
  };
}
