{ pkgs, lib, inputs, ... }: 
with lib;

{ 
	  services.n8n = {
    		enable = true;
    		openFirewall = true; # Opens port 5678 on the local firewall
   		 environment = {
      		WEBHOOK_URL = "https://n8n.example.com"; # Replace with your domain
      		GENERIC_TIMEZONE = "Pacific/Auckland";
    		};
  };
}  
