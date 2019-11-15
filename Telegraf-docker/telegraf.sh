docker run -d --name=telegraf \
      -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
       --restart=unless-stopped \
      arm32v7/telegraf