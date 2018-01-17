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
alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --all --graph --decorate'
alias gb='git branch'
alias gco='git checkout'

# aliases
alias aliases='vim $(realname "$0")'

# wait for a process to end (simple 'wait' only works for child processes of the current shell)

pwait() {
    while [ -e /proc/$1 ]; do
        sleep 0.1
    done
}
