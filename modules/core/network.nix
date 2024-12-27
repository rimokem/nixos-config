{config, pkgs, ...}:
{

  networking = {
    hostName = "nixos"; 
    networkmanager.enable = true;
    firewall = {
        enable = true;
        trustedInterfaces = ["tailscale0"];
        allowedUDPPorts = [config.services.tailscale.port];
    };
  };

  services.tailscale = {    
    enable = true;
    openFirewall = true;
  };

}