FROM ubuntu:15.10

RUN apt-get update && apt-get install -y isc-dhcp-server

EXPOSE 67 

COPY dhcpd.conf /etc/dhcp/dhcpd.conf

ENTRYPOINT dhcpd -d -f -cf /etc/dhcp/dhcpd.conf

