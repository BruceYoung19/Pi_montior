{ pkgs, lib, inputs, ... }: 
with lib;

{ 
	services.tailscale.enable = true;
  	# Open the Tailscale UDP port in the firewall
  	networking.firewall.allowedUDPPorts = [ config.services.tailscale.port ];
}  
