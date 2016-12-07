export ZSH=$HOME/.oh-my-zsh
export PATH=/c/Anaconda3/:/c/Anaconda3/lib:/d/Anaconda3/Scripts/:$PATH
ZSH_THEME="agnoster"
plugins=(ssh-agent cp httpie jump zsh-autosuggestions warhol)
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
