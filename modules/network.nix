{
  config,
  pkgs,
  ...
}: {
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

  services.resolved = {
    enable = true;
    extraConfig = ''
      [Resolve]
      DNS=45.90.28.0#49d3fc.dns.nextdns.io
      DNS=2a07:a8c0::#49d3fc.dns.nextdns.io
      DNS=45.90.30.0#49d3fc.dns.nextdns.io
      DNS=2a07:a8c1::#49d3fc.dns.nextdns.io
      DNSOverTLS=yes
    '';
  };
}
