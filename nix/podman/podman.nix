{ pkgs, lib, inputs, ... }: 
{
virtualisation.podman = {
  enable = true;
  dockerCompat = true; 
  #defaultNetwork.settings.dns_enabled = true; 
};

users.users.bserver = { 
  extraGroups = [
    "podman"
  ];
};
}
