FROM ubuntu:18.04
RUN apt-get update && apt-get install -y supervisor wget libssl1.0.0
COPY supervisord.conf /etc
RUN wget -P /bin/ https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/airupnp-arm
RUN wget -P /bin/ https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/aircast-arm
RUN chmod a+x /bin/airupnp-arm /bin/aircast-arm
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]