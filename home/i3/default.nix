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

  home.pointerCursor = 
    let 
      getFrom = url: hash: name: {
          gtk.enable = true;
          x11.enable = true;
          name = name;
          size = 24;
          package = 
            pkgs.runCommand "moveUp" {} ''
              mkdir -p $out/share/icons
              ln -s ${pkgs.fetchzip {
                url = url;
                hash = hash;
              }} $out/share/icons/${name}
          '';
        };
    in
      getFrom 
        "https://github.com/ful1e5/fuchsia-cursor/releases/download/v2.0.0/Fuchsia-Pop.tar.gz"
        "sha256-BvVE9qupMjw7JRqFUj1J0a4ys6kc9fOLBPx2bGaapTk="
        "Fuchsia-Pop";

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
    # "Xcursor.size" = 4;
    # "Xft.dpi" = 192;
  # };
}
