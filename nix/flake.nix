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
  # Other configurations
  nixosConfigurations = {
        # Home server
        home = nixpkgs.lib.nixosSystem { 
                specialArgs = {inherit inputs;};
                modules = [
      		      ./configuration.nix
		      ./services/active-services.nix 
                ];
        };};};
}
