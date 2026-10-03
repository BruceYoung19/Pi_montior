{ pkgs, lib, inputs, ... }: 
{
environment.systemPackages = with pkgs; [
  
  # System tools 
  vim 
  btop
  ntfs3g
  git
  tailscale
  podman
  #nginx
  
  python3
  rclone
  rsync
 ];
}
