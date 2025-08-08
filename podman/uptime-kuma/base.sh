    podman run -d \
      --name uptime-kuma \
      -p 3001:3001 \
      -v uptime-kuma:/app/data \
      docker.io/louislam/uptime-kuma
