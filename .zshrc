# alias
alias ls='ls -G'

# git-completion
if [ -f ~/.zsh/completion/git-completion.bash ]; then
    fpath=(~/.zsh/completion $fpath)
    autoload -Uz compinit
    compinit -u
fi

# prompt
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    setopt PROMPT_SUBST ; PS1='%F{green}%f %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f \$ '
fi
