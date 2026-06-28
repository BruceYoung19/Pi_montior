{ pkgs, ... }:

let
  server-rebuild = pkgs.writeShellScriptBin "server-rebuild" ''
    cd 
    
    sudo nixos-rebuild switch --flake ~/Pi_montior/nix#home --impure
  '';

in {
  environment.systemPackages = [ server-rebuild];
}
