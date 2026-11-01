{ pkgs, lib, inputs, ... }: 
{
	virtualisation.incus.enable = true;
	networking.nftables.enable = true;

	virtualisation.incus.preseed = {
  	networks = [
    	{
      		config = {
        	 "ipv4.address" = "10.0.100.1/24";
        	 "ipv4.nat" = "true";
      			};
      		name = "incusbr0";
      		type = "bridge";
    	}];};

	users.users.bserver.extraGroups = ["incus-admin"];

	networking.firewall = {
	  enable = true;
	  trustedInterfaces = [ "incusbr0" ]; 
	};

	networking.firewall.interfaces.incrusbr0.allowedTCPPorts= [
	80
 	];
}
