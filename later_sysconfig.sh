#########################################################################
# File Name: later_sysconfig.sh
# Author: sv
# mail: 
# Created Time: Tue 29 Jun 2021 10:52:33 AM CST
#########################################################################
#!/bin/bash

sudo pacman -S --noconfirm lib32-gcc-libs the_silver_searcher bc lzop \
		yay cpio rsync wget lib32-zlib unclutter subversion ctags man \
		wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei \
		ttf-arphic-uming noto-fonts-cjk translate-shell ttf-arphic-ukai \
		fcitx5 fcitx5-gtk fcitx5-qt fcitx5-material-color fcitx5-mozc \
		fcitx5-configtool fcitx5-rime pulseaudio-alsa alsa-utils nfs-utils \
		clang grim slurp llvm ccls
yay -S --noconfirm google-chrome 

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions /home/sv/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting /home/sv/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp /home/sv/sv_etc/.zshrc /home/sv/ -rvf
source /home/sv/.zshrc
rehash
