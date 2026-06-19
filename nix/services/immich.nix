
{ pkgs, lib, inputs, ... }: 
with lib;

{
	services.immich = {
	  enable = true;
	  port = 2283;
	  host = "0.0.0.0";
	  openFirewall = true;
	  mediaLocation = "/mnt/immichstorage/immich"; 	
	};
	# 2. FIXED: Drill a hole in Systemd's strict sandboxing so Immich can see this path
		systemd.services.immich-server.serviceConfig.ReadWritePaths = [ "/mnt/immichstorage/immich" ];
		systemd.services.immich-microservices.serviceConfig.ReadWritePaths = [ "/mnt/immichstorage/immich" ];

	# 3. Ensure NixOS creates the directory automatically with proper permissions
	systemd.tmpfiles.rules = [
  		"d /mnt/immichstorage/immich 0750 immich immich - -"
	 ];
}


