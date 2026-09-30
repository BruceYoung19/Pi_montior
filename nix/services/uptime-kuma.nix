{ pkgs, lib, inputs, ... }: 
with lib;

{
  services.uptime-kuma = {
    enable = true;
    settings = {
      PORT = 3001;
    };
  };
}

