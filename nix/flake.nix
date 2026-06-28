{
  description = "Nixos Home Server";

  inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
   };

  outputs = { self, nixpkgs }@inputs:
  
  let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
  
  in {
  # Docker Shell
	devShells.${system}.default = pkgs.mkShell {
      	packages = with pkgs; [
        	docker
        	docker-compose
        	curl
      	];
    };
  # for my main os
  nixosConfigurations = {
        # Home server
        home = nixpkgs.lib.nixosSystem { 
                specialArgs = {inherit inputs;};
                modules = [
      		      ./configuration.nix
		      ./services/active-services.nix
		      ./cookbook/books.nix
		      ./docker/docker.nix 
                ];
        };};};
}
