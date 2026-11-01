
resource "incus_instance" "microbin" {
  name        = "microbin"
  description = "MicroBin running on Podman"
  image       = "images:debian/13/cloud"
  type        = "virtual-machine"
  profiles    = ["default"]
  ephemeral   = false
  running     = true

  config = {
    "boot.autostart" = "true"
    "limits.cpu"     = "1"
    "limits.memory"  = "1GiB"

      packages:
        - podman
        - curl
  
      runcmd:
        - [podman, volume, create, microbin_data]
        - [systemctl, enable, --now, microbin.service]
  }
}

output "microbin_ipv4" {
  description = "IPv4 address of the MicroBin VM"
  value       = incus_instance.microbin.ipv4_address
}

