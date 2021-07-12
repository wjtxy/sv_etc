#########################################################################
# File Name: later_sysconfig.sh
# Author: sv
# mail: 
# Created Time: Tue 29 Jun 2021 10:52:33 AM CST
#########################################################################
#!/bin/bash
if [ "$(whoami)" != "sv" ];then
	echo "you are not sv!!!"
	echo "exit!!!"
	exit
fi

sudo pacman -S --noconfirm lib32-gcc-libs bc lzop \
		yay cpio rsync wget lib32-zlib unclutter subversion ctags \
		wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei \
		ttf-arphic-uming noto-fonts-cjk translate-shell ttf-arphic-ukai \
		fcitx5 fcitx5-gtk fcitx5-qt fcitx5-material-color fcitx5-mozc \
		fcitx5-configtool fcitx5-rime pulseaudio-alsa alsa-utils nfs-utils \
		clang grim slurp llvm ccls man man-pages joplin-desktop \
		ripgrep  the_silver_searcher bat ninja  

yay -S --noconfirm google-chrome bear wechat-uos

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

mkdir $HOME"/app"
git clone https://github.com/sumneko/lua-language-server $HOME"/app/lua-language-server"
cd $HOME"/app/lua-language-server"
git submodule update --init --recursive
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

cp $HOME"/sv_etc/.zshrc" $HOME"/" -rvf
source $HOME"/.zshrc"
rehash


