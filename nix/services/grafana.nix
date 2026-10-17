{ pkgs, lib, inputs, ... }: 
with lib;

{
  services.grafana = {
    enable = true;
    settings = {
      PORT = "3008";
      HOST = "0.0.0.0";
    };
  };
}
