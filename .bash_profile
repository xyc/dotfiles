# Colorized Terminal
TERM="xterm-256color"
alias ls="ls -G"
PS1="\[\033[01;32m\]\u\[\033[01;34m\] \w \$\[\033[00m\] "

# Hide bash deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Convenient aliases
alias l='ls -1'
alias la='ls -lhAF'
alias ll='ls -lhF'
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias dir="lt"
alias dot="l."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -G"

alias ga="git add -A"
alias gco="git checkout"
alias gcm="git commit -m"
alias gd="git diff"
alias gs="git status"
alias gl="git lg"

# Convenient functions
function lsport {
  lsof -ti tcp:$1
}
function killport {
  lsof -ti tcp:$1 | xargs kill
}
