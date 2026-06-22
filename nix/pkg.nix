{ pkgs, lib, inputs, ... }: 
{
environment.systemPackages = with pkgs; [
  vim 
  btop
  ntfs3g
  git
  sqld
  python3
 ];
}
