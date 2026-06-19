{ pkgs, lib, inputs, ... }: 
with lib;

{
	services.microbin = {
		enable=true;
		settings = {
      		 MICROBIN_BIND = "0.0.0.0";
      		 MICROBIN_PORT = 8078;
    		};
	};
}
