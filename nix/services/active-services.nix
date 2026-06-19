{ ... }:

{
  # SIMULATING ACTIVE DIRECTORY - THIS THE GROUP TO KEEP TRACK WHICH IS ACTIVE
  imports = [
	./microbin.nix
	./homer.nix 
  ];

}
