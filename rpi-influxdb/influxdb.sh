docker run \
      --restart unless-stopped \
      --detach \
      --name=influxdb \
      -e PUID=1000 \
      -e PGID=1000 \
      -e INFLUXDB_DB=p1data \
      -e INFLUXDB_ADMIN_USER=admin \
      -e INFLUXDB_ADMIN_PASSWORD=admin \
      -e INFLUXDB_USER=user \
      -e INFLUXDB_USER_PASSWORD=user \
      -v $PWD/data:/var/lib/influxdb \
      -p 8086:8086 \
      influxdb:latest