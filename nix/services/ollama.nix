{ pkgs, lib, inputs, ... }: 
with lib;

services.ollama = {
  enable = true;
  loadModels = ["tinyllama" ];
};
