#!/bin/bash


echo "performance" >  /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "performance" >  /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" >  /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo "performance" >  /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor

loadkeys /home/sv/sv_etc/keys.conf
# ip addr add 10.10.32.55/24 dev enp2s0f2
# ip addr add 192.168.30.72/24 dev enp2s0f2
echo 1 > /proc/sys/kernel/sysrq
