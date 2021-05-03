export ZSH="/home/sv/.oh-my-zsh"

ZSH_THEME="fishy"

plugins=(git
	     z
		 zsh-autosuggestions
		 zsh-syntax-highlighting
		 sudo
	 )

source $ZSH/oh-my-zsh.sh

alias q="exit"
alias t="trans  en:zh"
# alias t="trans  en:zh -speak"
setopt no_nomatch
alias gic="git clone --depth=1" 
alias gis="git status" 
bindkey '^ ' autosuggest-accept
# export LANG=zh_CN.GBK
export LANG=en_US.UTF-8
export PATH="$PATH:/home/sv/work/ebf_6ull_buildroot/output/host/bin"

#unset http_proxy
#unset https_proxy
export http_proxy=127.0.0.1:7890
export https_proxy=127.0.0.1:7890
