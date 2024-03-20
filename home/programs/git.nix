{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;
    userName = "Kento Sakaguchi";
    userEmail = "kent.sk.815@gmail.com";
    lfs.enable = true;
  };
}
