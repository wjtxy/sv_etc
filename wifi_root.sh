#!/bin/bash

echo "set net"
# ip link set wlp3s0 down
# ip link set wlp3s0 up

wpa_supplicant -c .small.conf -i wlan0 &
# wpa_supplicant -c .small.conf -i wlp3s0 &

echo "dhcpcd ..."
# dhcpcd &
echo "end"
