{ pkgs, lib, inputs, ... }: 

{
  virtualisation.podman.enable = true;

  virtualisation.oci-containers = {
    backend = "podman";

    containers.filebrowser = {
      image = "docker.io/filebrowser/filebrowser:latest";

      ports = [
        "8080:80"
      ];

      volumes = [
        "/var/lib/filebrowser/srv:/srv"
        "/var/lib/filebrowser/database:/database"
      ];

      cmd = [
        "--address"
        "0.0.0.0"
        "--port"
        "80"
        "--root"
        "/srv"
        "--database"
        "/database/filebrowser.db"
      ];
    };
  };
}

