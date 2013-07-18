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


##### Bind keys

bindkey "${key[Home]}" beginning-of-line
bindkey "${key[End]}" end-of-line
bindkey "${key[Delete]}" delete-char
bindkey "${key[Insert]}" overwrite-mode
