#!/usr/bin/env bash
# source: http://rsabalburo.blogspot.be/2014/07/ntopng-on-ubuntu-1404-lts-server.html

apt-get update
apt-get -y upgrade

apt-get install -y git
apt-get install -y autoconf libpcap-dev libtool

git clone https://github.com/ntop/nDPI.git
pushd nDPI
./autogen.sh
make

screen -d -m -S pcap-sample sudo tcpdump -ni eth0 -s0 -w /tmp/capture.pcap -v
apt-get update
wget http://www.google.com
sleep 5
PROCESS=$(screen -ls |grep pcap-sample)
kill $(echo $PROCESS |cut -f1 -d'.')
example/ndpiReader -i /tmp/capture.pcap -s 20
popd