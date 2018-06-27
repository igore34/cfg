if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git-tools/git-completion.bash
source ~/.git-tools/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

export PS1='\[\e[36m\]\W|\[\e[m\]\[\e[31m\]$(__git_ps1)\[\e[m\]$ '

export PATH="$HOME/.cargo/bin:$PATH"
