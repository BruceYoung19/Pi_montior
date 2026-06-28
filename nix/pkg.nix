{ pkgs, lib, inputs, ... }: 
{
environment.systemPackages = with pkgs; [
  
  # System tools 
  vim 
  btop
  ntfs3g
  git
  #nginx
  
  sqld
  python3
 ];
}
