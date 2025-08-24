{config, ...}: let
  d = config.xdg.dataHome;
  c = config.xdg.configHome;
  cache = config.xdg.cacheHome;
in {
  # add environment variables
  home.sessionVariables = {
    # clean up ~
    LESSHISTFILE = cache + "/less/history";
    LESSKEY = c + "/less/lesskey";
    # WINEPREFIX = d + "/wine";

    # set default applications
    BROWSER = "zen-beta";
    TERMINAL = "ghostty";

    # enable scrolling in git diff
    DELTA_PAGER = "less -R";

    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    STARSHIP_CACHE = "${config.xdg.cacheHome}/starship";
  };

  home.shellAliases = {
    zed = "zeditor";
  };
}
