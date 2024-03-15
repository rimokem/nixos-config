{
  programs.nushell = {
    enable = true;
    configFile.source = ./config.nu;
    # envFile.source = ./env.nu;
  };

  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
}
