autoload zkbd
autoload -Uz promptinit
autoload -U colors && colors

promptinit

###### Exports
export EDITOR=nano
export MBUILD2="/home/dm/Projects/work/mbuild2"
export RMAT="/home/dm/Projects/my/rmat"
export PATH="$PATH:/home/dm/.gem/ruby/2.0.0/bin:/home/dm/Mathworks/bin/"
export IPOD_MOUNTPOINT="/mnt/ipod/"
export ANDROID_SDK="/opt/android-sdk"

###### PROMPT
export PROMPT="%B[%T]%b %{$fg_bold[blue]%}%n@%M%{$reset_color%} ~> "
RPROMPT='%B%2~%b'

###### Aliases
alias ls='ls --color=auto -h'
alias sl='ls'
alias less='less -R'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias tree='tree -C'

alias ..='cd ..'
alias ...='cd ../../'

alias ccat=pygmentize # syntax higlight over cat
alias psx="ps -auxw ¦ grep $1"

###### Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

###### Use emacs keybindings even if our EDITOR is set to vi

bindkey '\e[3~' delete-char # del
bindkey ';5D' backward-word # ctrl+left 
bindkey ';5C' forward-word #ctrl+right
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
