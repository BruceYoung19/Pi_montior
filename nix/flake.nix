{
  description = "Nixos Home Server";

  inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
	
	# ====================== incus compose
	incus-compose = {
     		url = "github:lxc/incus-compose" ;
		inputs.nixpkgs.follows = "nixpkgs";
	};
   };

  outputs = { self, nixpkgs,incus-compose }@inputs:
  
  let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
  
  in { 
  # for my main os
  nixosConfigurations = {
        # Home server
        home = nixpkgs.lib.nixosSystem { 
                specialArgs = {inherit inputs;};
                modules = [
      		      ./configuration.nix
		      ./services/active-services.nix
		      ./cookbook/books.nix
		      ./podman/podman.nix
		      ./incus/incus.nix
                ];
        };};};
}
