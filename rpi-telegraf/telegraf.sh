docker run -d --name=telegraf \
      -h "rpi3docker" \
      -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
       --restart=unless-stopped \
      arm32v7/telegraf