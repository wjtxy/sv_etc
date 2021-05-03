#########################################################################
# File Name: after_zsh.sh
# Author: sv
# mail: 
# Created Time: Mon 03 May 2021 05:32:54 PM CST
#########################################################################
#!/bin/bash

cp /home/sv/sv_etc/.zshrc /home/sv/ -rvf
cp /home/sv/app/zsh* /home/sv/.oh-my-zsh/plugins -rvf
source /home/sv/.zshrc
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
sudo ln -sf /home/sv/.joplin/Joplin.AppImage /usr/bin/joplin 
