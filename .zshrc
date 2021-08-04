export ZSH="/home/sv/.oh-my-zsh"

ZSH_THEME="nicoulaj"

plugins=(
		 git
	     z
		 zsh-autosuggestions
		 zsh-syntax-highlighting
		 sudo
	    )

setopt no_nomatch
source $ZSH/oh-my-zsh.sh
source /home/sv/sv_etc/script/auto-ls.zsh

alias em="emacs -nw"
alias q="exit"
alias t="trans  en:zh"

alias gic="git clone --depth=1" 
alias gis="git status" 
alias gl="lazygit" 

alias cptoetc="
	rm /home/sv/sv_etc/config/nvim/misc.d/* -rvf;\
	rm /home/sv/sv_etc/config/nvim/plug.d/* -rvf;\
	rm /home/sv/sv_etc/config/nvim/lua/* -rvf;\
	cp /home/sv/.config/nvim/*.vim /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/plug.d /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/misc.d /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/lua /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.zshrc /home/sv/sv_etc/ -rvf"
alias cpfrometc="
	rm /home/sv/.config/nvim/misc.d/* -rvf;\
	rm /home/sv/.config/nvim/plug.d/* -rvf;\
	rm /home/sv/.config/nvim/lua/* -rvf;\
	cp /home/sv/sv_etc/config/nvim/*.vim /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/plug.d /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/misc.d /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/lua /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/.zshrc /home/sv/ -rvf"

bindkey '^ ' autosuggest-accept
bindkey '^k' autosuggest-accept

export PATH="$PATH:/home/sv/.cargo/bin:/opt/arm-gcc/bin/:/opt/arm-xm-linux/usr/bin/:/opt/arm-xmv2-linux/usr/bin/:/opt/gcc-arm-none-eabi-4_9-2015q2/bin/"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/arm-xm-linux/usr/lib/:/opt/arm-xmv2-linux/usr/lib/:/opt/gcc-arm-none-eabi-4_9-2015q2/lib/gcc/arm-none-eabi/4.9.3"

alias unproxy="unset http_proxy;unset https_proxy;unset socks5"
alias enproxy="export http_proxy=127.0.0.1:7890;export https_proxy=127.0.0.1:7890;export socks5=127.0.0.1:7891"

alias luamake=/home/sv/app/lua-language-server/3rd/luamake/luamake
