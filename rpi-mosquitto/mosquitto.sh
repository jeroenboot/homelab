docker run \
      --restart unless-stopped \
      --detach \
      --name=mosquitto \
      -e PUID=1000 \
      -e PGID=1000 \
      -p 1883:1883 \
      eclipse-mosquitto:latest