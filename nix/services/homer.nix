{ pkgs, lib, inputs, ... }: 
with lib;

services.homer = {
  enable = true;
  settings = {
    title = "My Homelab Dashboard";
    subtitle = "Homer";
    
    # Example service link
    services = [
      {
        name = "App Category";
        items = [
          {
            name = "My Service";
            subtitle = "Description of service";
            logo = "default.png";
            url = "http://localhost:8080";
          }
        ];
      }
    ];
  };
};

