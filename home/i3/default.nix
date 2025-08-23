{
  pkgs,
  config,
  ...
}: {
  # wallpaper, binary file
  home.file.".config/i3/wallpaper.jpg".source = ../../wallpapers/wallpaper-desktop.jpg;
  home.file.".config/i3/config".source = ./config;
  # home.file.".config/i3/i3blocks.conf".source = ./i3blocks.conf;
  # home.file.".config/i3/keybindings".source = ./keybindings;
  home.file.".config/picom" = {
    source = ./picom;
    recursive = true;
    executable = true;
  };
  home.file.".config/polybar" = {
    source = ./polybar;
    recursive = true;
    executable = true;
  };
  home.file.".config/rofi" = {
    source = ./rofi;
    # copy the scripts directory recursively
    recursive = true;
  };

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
    # "Xcursor.size" = 4;
    # "Xft.dpi" = 192;
  # };
}
