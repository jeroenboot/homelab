# Docker Airconnect

This is a dockerized version of AirConnect (https://github.com/philippe44/AirConnect) which bridges AirPlay with Sonos and the Google Cast protocol.
Rewritten for Raspberry Pi from https://github.com/swilsonau/docker-airconnect

## How to launch

Simply run:
```bash
docker build -t docker-airconnect-rpi .
docker run -d --net=host --name=airconnect --restart=unless-stopped docker-airconnect-rpi

or

docker run -d --net=host --name=airconnect --restart=unless-stopped jeroenboot/rpi-airconnect
```