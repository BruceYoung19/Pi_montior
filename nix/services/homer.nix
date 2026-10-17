{ config, pkgs, ... }:

{
  services.homer = {
    enable = true;

    settings = {
      title = "My Homer";
      subtitle = "NixOS";
      header = true;
      footer = "Powered by NixOS";
      
    };
  };
}
