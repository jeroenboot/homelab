docker run \
  --restart unless-stopped \
  --detach \
  --name=grafana \
  --volume=grafana-volume:/var/lib/grafana \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 3000:3000 \
  grafana/grafana