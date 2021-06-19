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
cp /home/sv/sv_etc/config/* /home/sv/.config/ -rvf
cp /home/sv/sv_etc/.pam_environment /home/sv/.pam_environment -rvf
sudo ln -sf /home/sv/.config/nvim /root/.config/nvim
sudo ln -sf /home/sv/sv_etc/script/google-chrome-proxy.sh /usr/bin/chrome-proxy 
sudo ln -sf /home/sv/sv_etc/script/alacritty.sh /usr/bin/alacritty.sh
sudo cp /home/sv/sv_etc/etc/profile /etc/ -rvf
sudo cp /home/sv/sv_etc/etc/pacman.conf /etc/ -rvf
sudo cp /home/sv/sv_etc/etc/mirrorlist /etc/pacman.d/ -rvf
sudo cp /home/sv/sv_etc/etc/resolv.conf /etc/ -rvf
# sudo chattr +i /etc/resolv.conf 
sudo rm /etc/ssh -rvf
sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm sway pulseaudio-alsa xclip nodejs alacritty npm \
		fcitx5 fcitx5-gtk fcitx5-qt alsa-utils unzip zip\
		wlroots xorg-xwayland wayland-protocols wayland ctags fcitx5-configtool \
		translate-shell zsh wl-clipboard grim slurp sshfs nfs-utils lib32-gcc-libs \
		clang base-devel python3 python2 python-pip \
		clash wl-clipboard the_silver_searcher bc lzop subversion \
		wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei ttf-arphic-ukai \
		ttf-arphic-uming noto-fonts-cjk cpio rsync fcitx5-rime wget\
		openssl openssh lib32-zlib yay\
		fcitx5-material-color fcitx5-mozc minicom htop neofetch \
		rubygems man dmenu fuse2 
#kde-dev-utils

# archlinux no sound
amixer sset Master unmute
python2 /home/sv/sv_etc/script/get-pip.py
python2 -m pip install pynvim
sudo python -m pip install pynvim
git config --global user.email "1092347553@qq.com"
git config --global user.name "vivy89"
git config --global oh-my-zsh.hide-dirty 1 
git config --global credential.helper store 
npm config set registry https://registry.npm.taobao.org
sudo systemctl start sshd.service
sudo systemctl enable sshd.service
sudo cp /home/sv/sv_etc/etc/sshd_config /etc/ssh -rvf
sudo npm install -g neovim
gem install neovim
## cp /home/sv/sv_etc/.bashrc /home/sv -rvf
## source /home/sv/.bashrc
## clash &
## gic https://github.com/zsh-users/zsh-autosuggestions /home/sv/zsh-autosuggestions
## gic https://github.com/zsh-users/zsh-syntax-highlighting /home/sv/zsh-syntax-highlighting
