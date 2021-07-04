export ZSH="/home/sv/.oh-my-zsh"

ZSH_THEME="nicoulaj"

plugins=(git
	     z
		 zsh-autosuggestions
		 zsh-syntax-highlighting
		 sudo
	 )

setopt no_nomatch
source $ZSH/oh-my-zsh.sh

alias em="emacs -nw"
alias q="exit"
alias t="trans  en:zh"

alias gic="git clone --depth=1" 
alias gis="git status" 
alias gim="git commit -m "
alias cptoetc="cp /home/sv/.config/nvim/*.vim /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/coc-settings.json /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/plug.d /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.config/nvim/misc.d /home/sv/sv_etc/config/nvim -rvf;\
	cp /home/sv/.zshrc /home/sv/sv_etc/ -rvf"
alias cpfrometc="cp /home/sv/sv_etc/config/nvim/*.vim /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/coc-settings.json /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/plug.d /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/config/nvim/misc.d /home/sv/.config/nvim -rvf;\
	cp /home/sv/sv_etc/.zshrc /home/sv/ -rvf"

bindkey '^ ' autosuggest-accept
bindkey '^k' autosuggest-accept

export PATH="$PATH:/opt/arm-gcc/bin/:/opt/arm-xm-linux/usr/bin/:/opt/arm-xmv2-linux/usr/bin/"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/arm-xm-linux/usr/lib/:/opt/arm-xmv2-linux/usr/lib/"

alias unproxy="unset http_proxy;unset https_proxy"
# unset http_proxy
# unset https_proxy
export http_proxy=127.0.0.1:7890
export https_proxy=127.0.0.1:7890
