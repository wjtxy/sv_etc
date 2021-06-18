export ZSH="/home/sv/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

ZSH_THEME="nicoulaj"

plugins=(git
	     z
		 zsh-autosuggestions
		 zsh-syntax-highlighting
		 sudo
	 )

setopt no_nomatch

alias em="emacs -nw"
alias q="exit"
alias t="trans  en:zh"

alias gic="git clone --depth=1" 
alias gis="git status" 
alias gim="git commit -m "

bindkey '^ ' autosuggest-accept
bindkey '^k' autosuggest-accept

export PATH="$PATH:/home/sv/work/ebf_6ull_buildroot/output/host/bin:/opt/arm-xm-linux/usr/bin/:/opt/arm-xmv2-linux/usr/bin/"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/arm-xm-linux/usr/lib/:/opt/arm-xmv2-linux/usr/lib/"

## unset http_proxy
## unset https_proxy
export http_proxy=127.0.0.1:7890
export https_proxy=127.0.0.1:7890
