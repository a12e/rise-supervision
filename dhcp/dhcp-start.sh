#!/bin/bash

# Fail as soon as there is an error
set -e

echo "Installing isc-dhcp-server"
apt-get install -y isc-dhcp-server

cd /root

echo "Cloning repo"
git clone https://github.com/lukhio/rise-supervision
cd rise-supervision/dhcp

echo "Configuring interface"
ifconfig eth0 10.4.1.10/16

echo "Starting DHCP server"
dhcpd -d -f -cf /root/rise-supervision/dhcp/dhcpd.conf eth0
