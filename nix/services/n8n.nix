{ pkgs, lib, inputs, ... }: 
with lib;

{ 
	  services.n8n = {
    		enable = true;
    		openFirewall = true; 
   		environment = {
			N8N_PORT = "5678" ; 
      			GENERIC_TIMEZONE = "Pacific/Auckland";
    			N8N_SECURE_COOKIE = "false";
			};
  		};
}  
