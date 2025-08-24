{pkgs, ...}: {
  programs = {
    #--------------------------------------------------------------------------
    # ターミナル & シェル
    #--------------------------------------------------------------------------
    ghostty = {
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

    tmux = {
      enable = true;
      clock24 = true;
      keyMode = "vi";
      extraConfig = "mouse on";
    };

    starship = {
      enable = true;
      enableBashIntegration = true;
    };

    bash.enable = true;

    #--------------------------------------------------------------------------
    # 開発ツール
    #--------------------------------------------------------------------------
    git = {
      enable = true;
      userName = "rimokem";
      userEmail = "kent.sk.815@gmail.com";
      lfs.enable = true;
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    gh = {
      enable = true;
    };

    direnv = {
      enable = true;
      enableBashIntegration = true;
      enableNushellIntegration = true;
      nix-direnv.enable = true;
    };

    #--------------------------------------------------------------------------
    # エディタ
    #--------------------------------------------------------------------------
    zed-editor = {
      enable = true;
      extensions = [
        "nix"
        "toml"
      ];
      userSettings = {
        theme = {
          mode = "dark";
          light = "One Light";
          dark = "One Dark";
        };
        vim_mode = true;
        buffer_font_family = "PlemolJP Console NF";
      };
    };

    #--------------------------------------------------------------------------
    # GUIアプリケーション
    #--------------------------------------------------------------------------
    firefox = {
      enable = true;
      profiles.kento = {};
    };

    obs-studio.enable = true;

    #--------------------------------------------------------------------------
    # マルチメディア
    #--------------------------------------------------------------------------
    mpv = {
      enable = true;
      defaultProfiles = ["gpu-hq"];
      scripts = [pkgs.mpvScripts.mpris];
    };

    #--------------------------------------------------------------------------
    # CLIユーティリティ
    #--------------------------------------------------------------------------
    bat = {
      enable = true;
      config = {
        pager = "less -FR";
      };
    };

    aria2.enable = true;

    #--------------------------------------------------------------------------
    # システム & ネットワーク
    #--------------------------------------------------------------------------
    ssh.enable = true;
  };
}
