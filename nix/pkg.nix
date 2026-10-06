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
  podman-compose
  #nginx
  
  python3
  rclone
  rsync
  restic
 ];
}
