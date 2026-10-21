{ pkgs, lib, inputs, ... }: 
{
	virtualisation.incus.enable = true;
	networking.nftables.enable = true;

	users.users.bserver.extraGroups = ["incus-admin"];

}
