docker run \
      --restart unless-stopped \
      --detach \
      --name=nodered \
      -e PUID=1000 \
      -e PGID=1000 \
      -p 1880:1880 \
      -v $PWD/node-red-data:/data
      nodered/node-red:latest