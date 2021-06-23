#!/bin/bash
if [ "$(whoami)" != "sv" ];then
	echo "you are not sv!!!"
	echo "exit!!!"
	exit
fi
sudo cp /home/sv/sv_etc/script/cpu_pf.service /usr/lib/systemd/system/ -rvf
sudo systemctl enable cpu_pf.service
sudo systemctl start cpu_pf.service
sudo mkdir -p /root/.config
mkdir /home/sv/.config
cp /home/sv/sv_etc/.pam_environment /home/sv/.pam_environment -rvf
cp /home/sv/sv_etc/config/* /home/sv/.config/ -rvf
sudo ln -sf /home/sv/.config/nvim /root/.config/nvim
sudo ln -sf /home/sv/sv_etc/script/chrome.sh /usr/bin/chrome.sh
sudo ln -sf /home/sv/sv_etc/script/alacritty.sh /usr/bin/alacritty.sh
sudo rm /etc/ssh -rvf

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm sway dmenu xclip wl-clipboard alacritty nodejs npm \
		wlroots xorg-xwayland wayland-protocols wayland ctags zsh grim slurp \
		clash base-devel lib32-gcc-libs the_silver_searcher bc lzop subversion \
		yay cpio rsync wget python3 python2 python-pip openssl openssh lib32-zlib \
		wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei ttf-arphic-ukai \
		ttf-arphic-uming noto-fonts-cjk rubygems translate-shell man \
		fcitx5 fcitx5-gtk fcitx5-qt fcitx5-material-color fcitx5-mozc \
		fcitx5-configtool fcitx5-rime pulseaudio-alsa alsa-utils

sudo cp /home/sv/sv_etc/etc/* /etc/ -rvf
sudo chattr +i /etc/resolv.conf 

# archlinux no sound
amixer sset Master unmute
python2 /home/sv/sv_etc/script/get-pip.py
python2 -m pip install pynvim
sudo python -m pip install pynvim
npm config set registry https://registry.npm.taobao.org
sudo npm install -g neovim
gem install neovim

git config --global user.email "1092347553@qq.com"
git config --global user.name "vivy89"
git config --global oh-my-zsh.hide-dirty 1 
git config --global credential.helper store 
sudo systemctl start sshd.service
sudo systemctl enable sshd.service

## cp /home/sv/sv_etc/.bashrc /home/sv -rvf
## source /home/sv/.bashrc
## clash &
## gic https://github.com/zsh-users/zsh-autosuggestions /home/sv/zsh-autosuggestions
## gic https://github.com/zsh-users/zsh-syntax-highlighting /home/sv/zsh-syntax-highlighting
