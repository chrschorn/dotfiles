# General
alias ..='cd ..'

# Use colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# git
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gs='git status'
alias gu='git commit --amend --no-edit'
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias gla="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gb='git branch'
alias gco='git checkout'

# aliases
alias aliases='vim $(realname "$0")'
alias screens='screen -list'
alias e.='(xdg-open . & disown) >/dev/null 2>&1'

# wait for a process to end (simple 'wait' only works for child processes of the current shell)
pwait() {
    while [ -e /proc/$1 ]; do
        sleep 0.1
    done
}

alias dutd='du -sh * | sort -sh'
