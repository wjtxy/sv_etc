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

# sudo pacman -S --noconfirm lib32-gcc-libs bc lzop \
# 		yay cpio rsync wget lib32-zlib subversion ctags \
# 		noto-fonts-cjk translate-shell go\
# 		fcitx5 fcitx5-gtk fcitx5-qt fcitx5-material-color fcitx5-mozc \
# 		fcitx5-configtool fcitx5-rime pulseaudio-alsa alsa-utils nfs-utils \
# 		clang grim slurp llvm man man-pages joplin-desktop \
# 		ripgrep  the_silver_searcher bat ninja fuseiso \
# 		xorg xorg-xinit dmenu picom xclip zip nitrogen

sudo pacman -S --noconfirm lib32-gcc-libs bc lzop \
		yay cpio rsync wget lib32-zlib subversion ctags \
		go\
		fcitx5 fcitx5-gtk fcitx5-qt fcitx5-material-color fcitx5-mozc \
		fcitx5-configtool fcitx5-rime pulseaudio-alsa alsa-utils nfs-utils \
		clang llvm man man-pages \
		ripgrep  the_silver_searcher bat ninja fuseiso \
		xorg xorg-xinit dmenu picom xclip unzip zip nitrogen

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

sudo pacman -S --noconfirm rustup rust-analyzer
rustup toolchain install stable
rustup component add rls rust-analysis rust-src llvm-tools-preview
cargo install cargo-binutils cargo-generate

yay -S --noconfirm google-chrome bear clipcat

cp $HOME"/sv_etc/.zshrc" $HOME"/" -rvf
# source $HOME"/.zshrc"
# rehash

