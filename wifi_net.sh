#!/bin/bash

echo "set net"
# sudo ip link set wlp3s0 down
sudo ip link set wlp3s0 up

if [ "$1" == "mi" ]; then
	echo "xiaomi"
	sudo wpa_supplicant -c /home/sv/.mi11.conf -i wlp3s0  &
fi
if [ "$1" == "xm" ]; then
	echo "xm:$1"
	sudo wpa_supplicant -c /home/sv/.xm.conf -i wlp3s0  &
fi
if [ ! "$1" ];then
	echo "small"
	sudo wpa_supplicant -c /home/sv/.small.conf -i wlp3s0  &
fi
# wpa_supplicant -c .small.conf -i wlp3s0 &

echo "dhcpcd"
sudo dhcpcd wlp3s0 &
# sudo ip route add default via 10.10.32.1 dev enp2s0f2
