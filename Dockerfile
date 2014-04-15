FROM pvisintin/baseimage-docker
RUN apt-get update -q
RUN apt-get install -qy openssl openvpn iptables socat curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 8080/tcp
CMD run
