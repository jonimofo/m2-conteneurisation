```
version: '3'
services:
  openssh-server:
    build: ./openssh-server
    container_name: openssh-server
    hostname: openssh-server #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Paris
      - PUBLIC_KEY=ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILGgQTi0eeKiOdRq1qfIwhrrUnxlZKbn/+LUznnFpzmc
      - SUDO_ACCESS=true
      - USER_NAME=tp6
    volumes:
      - $PWD/config:/config
      - $PWD/data:/data:rw
    restart: unless-stopped
  rsync-client:
    container_name: rsync-client
    build: ./rsync-client
    volumes:
      - $PWD/keys:/keys:ro
    entrypoint: ./wait-for-it.sh openssh-server:2222 -- /usr/bin/rsync -av -e 'ssh -o StrictHostKeyChecking=no -i /keys/id_ed25519 -p 2222' tp6@openssh-server:/data /data
```