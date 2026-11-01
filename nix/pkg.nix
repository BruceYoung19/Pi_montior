{ pkgs, lib, inputs, ... }: 
{
environment.systemPackages = with pkgs; [
  
  # System tools 
  vim 
  btop
  ntfs3g
  git
  curl
  tailscale
  podman
  podman-compose
  incus-ui-canonical
  #nginx
  incus-compose
  opentofu
  
  python3
  rclone
  rsync
  restic
 ];
}
