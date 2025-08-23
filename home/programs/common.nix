{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # archives
    zip
    unzip
    p7zip

    # misc
    xdg-utils
    graphviz
    bottom
    rclone

    # productivity
    obsidian

    zscroll
    tlrc
    just
    ripgrep
    fd
    gamescope #SteamOS session compositing window manager
    yt-dlp
  ];

  programs = {
    tmux = {
      enable = true;
      clock24 = true;
      keyMode = "vi";
      extraConfig = "mouse on";
    };

    bat = {
      enable = true;
      config = {
        pager = "less -FR";
      };
    };

    direnv = {
      enable = true;
      enableBashIntegration = true;
      enableNushellIntegration = true;
      nix-direnv.enable = true;
    };

    bash.enable = true;

    ssh.enable = true;
    aria2.enable = true;

    skim = {
      enable = true;
      enableZshIntegration = true;
      defaultCommand = "rg --files --hidden";
      changeDirWidgetOptions = [
        "--preview 'exa --icons --git --color always -T -L 3 {} | head -200'"
        "--exact"
      ];
    };
  };

  services = {
    syncthing.enable = true;

    # auto mount usb drives
    udiskie.enable = true;
  };
}
