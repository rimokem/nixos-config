{
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userName = "Kento Sakaguchi";
    userEmail = "kent.sk.815@gmail.com";
    lfs.enable = true;
    
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
  
  programs.gh = {
    enable = true;
  };
}
