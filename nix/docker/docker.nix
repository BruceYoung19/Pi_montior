{ pkgs, lib, inputs, ... }: 
{
	virtualisation.docker = {
 		 enable = true;
	};

	users.users.bserver.extraGroups = [ "docker" ];	
}
