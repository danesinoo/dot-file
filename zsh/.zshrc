alias ls='exa --group-directories-first'
alias v='nvim'
alias ll='exa -lhars name'
alias lt='exa -L 3 -s extension --tree'
alias on='brew services start yabai && brew services start skhd'
alias off='brew services stop yabai && brew services stop skhd'
alias t='tmux'
alias ta='tmux attach -t'
alias tq='tmux kill-session -t'
alias e='exit'
alias python='python3'
alias connect='ssh carlo@192.168.1.86'

autoload -Uz compinit
compinit
_comp_options+=(globdots)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export HISTSIZE=100000
export SAVEHIST=100000
setopt EXTENDED_HISTORY

export TERM=xterm-256color
export EDITOR=nvim

export GOPATH=$HOME/.config/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
