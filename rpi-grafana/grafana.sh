docker run \
  --restart unless-stopped \
  --detach \
  --name=grafana \
  --volume=grafana-volume:/var/lib/grafana \
  -p 3000:3000 \
  grafana/grafana