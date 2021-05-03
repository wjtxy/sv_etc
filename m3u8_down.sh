#########################################################################
# File Name: m3u8_down.sh
# Author: sv
# mail: 
# Created Time: Sun 28 Mar 2021 06:20:15 PM CST
#########################################################################
#!/bin/bash

if [ $# -ne 2 ];then
	echo "input param 2"
	exit
fi

ffmpeg -threads 8 -allowed_extensions ALL -protocol_whitelist "file,tls,https,http,crypto,tcp" -user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36" -i "$1" -c copy "$2"
# ffmpeg -user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36" -i "$1" -c:v libx264 -crf 0 -c:a copy "$2"
