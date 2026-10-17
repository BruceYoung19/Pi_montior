{ pkgs, ... }:

let
  clean-up = pkgs.writeShellScriptBin "clean-up" ''
    cd 
   
    nix-collect-garbage -d 
  '';

in {
  environment.systemPackages = [ clean-up ];
}
