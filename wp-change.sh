#!/bin/bash
# -*- coding:UTF-8 -*-
##########################################################################
# File Name: wp-change.sh
# Author: wjt
# Created Time: 2020年06月16日 星期二 23时39分59秒
##########################################################################

dir=/home/sv/Downloads/image/*
while [ true ]
do
	for file in $dir
	do
		echo $file
		swaymsg "output * bg $file fill"
		sleep 10
	done
done


# swaybg -i Downloads/image/3rd-14.jpg -m fill

# while [ true ]
# do
#     feh --recursive --randomize --bg-fill ~/Downloads/image
#     sleep 4
# done
