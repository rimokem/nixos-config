{ pkgs, ... }:

# terminals

let
  font = "HackGen Console NF";
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.95;
      window.dynamic_padding = true;
      window.padding = {
        x = 5;
        y = 5;
      };
      scrolling.history = 10000;

      font = {
        normal.family = font;
        bold.family = font;
        italic.family = font;
        size = 13;
      };
    };
  };
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      theme = "tokyonight";
      font-family = "HackGen Console NF";
      font-size = 13;
      gtk-titlebar = false;
      background-opacity = 0.95;
    };
  };
}
