
export ZSH="/home/user/.oh-my-zsh"

ZSH_THEME="alanpeabody"

plugins=(
	git
    postgres
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
