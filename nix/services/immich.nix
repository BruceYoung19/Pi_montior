
{ pkgs, lib, inputs, ... }: 
with lib;

{
	#services.immich = {
	#  enable = true;
	#  port = 2283;
	#  host = "0.0.0.0";
	#  openFirewall = true;
	#  mediaLocation = "/mnt/photos/immich"; 
	#};

	services.jellyfin = {
    		enable = true;
    		openFirewall = true;
  	};

	# Mounting HDD
	fileSystems."/mnt/photos" = {
  		device = "/dev/disk/by-uuid/AB78-247B";  
  		fsType = "vfat";  
  		options = [ "defaults" "nofail" ]; 
	};
	
}


