source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

export CLICOLOR=1
export EDITOR='nvim'

export PROMPT_DIRTRIM=2
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h \w$(__git_ps1 " (%s)") \[\e[0;$(($?==0?0:91))m\]$ \[\e[0m\]'

alias ll='ls -lh'
alias la='ls -lah'
alias lt='ls -latr'

alias vim='nvim'

alias gap='git add -p'
alias gs='git status'
alias gd='git diff'

alias grep="grep --color"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.juliaup/bin
export PATH="/usr/local/opt/llvm/bin:$PATH"

# Enable fzf integration for Bash.
eval "$(fzf --bash)"
