FROM debian:stable
RUN apt-get update && \
  apt-get install -y coturn && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD turnserver.conf /etc/turnserver.conf
ADD coturn /etc/default/coturn
EXPOSE 3478 3479 3478/udp 3479/udp

CMD turnserver
