#########################################################################
# File Name: google_chrome_proxy.sh
# Author: sv
# mail: 
# Created Time: Wed 16 Dec 2020 08:32:26 PM CST
#########################################################################
#!/bin/bash

chrome=
if [ -f "/usr/bin/google-chrome-stable" ];then
	chrome="google-chrome-stable"
elif [ -f "/usr/bin/google-chrome" ];then
	chrome="google-chrome"
else
	echo "no google-chrome"
	exit
fi
$chrome --proxy-server="socks5://127.0.01:7891;http://127.0.0.1:7890" 2>/dev/null
