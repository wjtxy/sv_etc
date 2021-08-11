#!/bin/bash
if [ "$(whoami)" != "sv" ];then
	echo "you are not sv!!!"
	echo "exit!!!"
	exit
fi

sudo cp $HOME"/sv_etc/script/cpu_pf.service" /usr/lib/systemd/system/ -rvf
sudo systemctl enable cpu_pf.service
sudo systemctl start cpu_pf.service

mkdir $HOME"/.dwm"
cp /home/sv/sv_etc/other/autostart.sh /home/sv/.dwm/
sudo mkdir -p /root/.config
mkdir $HOME"/.config"
sudo git clone --depth=1 https://github.com/vivy89/st /opt/st
sudo ln -sf /opt/st/st /usr/bin/st
cp $HOME"/sv_etc/.pam_environment" $HOME"/.pam_environment" -rvf
cp /home/sv/sv_etc/config/* /home/sv/.config -rvf
sudo ln -sf $HOME"/.config/nvim" /root/.config/nvim
sudo ln -sf $HOME"/sv_etc/script/chrome.sh" /usr/bin/chrome.sh
sudo ln -sf $HOME"/sv_etc/script/alacritty.sh" /usr/bin/alacritty.sh
sudo rm /etc/ssh -rvf

sudo cp $HOME"/sv_etc/etc" / -rvf
sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm archlinux-keyring
sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm sway bemenu-wayland wl-clipboard alacritty \
		wlroots xorg-xwayland wayland-protocols wayland zsh \
		nodejs npm yarn rubygems \
		python3 python2 python-pip openssl openssh base-devel clash 
		
sudo cp $HOME"/sv_etc/etc" / -rvf

# archlinux no sound
amixer sset Master unmute
python2 $HOME"/sv_etc/script/get-pip.py"
python2 -m pip install pynvim
sudo python -m pip install pynvim
npm config set registry https://registry.npm.taobao.org
sudo npm install -g neovim
sudo npm install -g vim-language-server
sudo npm i -g vscode-langservers-extracted
sudo npm i -g bash-language-server
gem install neovim

# git config --global user.email "1092347553@qq.com"
# git config --global user.name "vivy89"
git config --global oh-my-zsh.hide-dirty 1 
git config --global credential.helper store 
git config --global init.defaultBranch main
git config --global core.editor nvim
sudo systemctl start sshd.service
sudo systemctl enable sshd.service

git config --global http.postBuffer 1048576000
sudo python -m pip install pySocks
