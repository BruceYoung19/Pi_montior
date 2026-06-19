{ pkgs, lib, inputs, ... }: 
with lib;

{ 
	services.plex = {                                                   
        	enable = true;                                                
        	openFirewall = true;                                          
  };
}  
