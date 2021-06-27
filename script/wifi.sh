#!/bin/bash

echo "set net"
# sudo ip link set wlp3s0 down
sudo ip link set wlp3s0 up

echo "small"
sudo wpa_supplicant -c /home/sv/sv_etc/.config/small.conf -i wlp3s0  &

echo "dhcpcd"
sudo dhcpcd wlp3s0 &
# sudo ip route add default via 10.10.32.1 dev enp2s0f2
