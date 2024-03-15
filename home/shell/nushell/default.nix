{
  programs.nushell = {
    enable = true;
    configFile.source = ./config.nu;
    # envFile.source = ./env.nu;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
}
