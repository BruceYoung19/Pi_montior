{ pkgs, lib, inputs, ... }: 
with lib;

{ 
	services.tailscale.enable = true;
  	#networking.firewall.allowedUDPPorts = [ config.services.tailscale.port ];
}  
