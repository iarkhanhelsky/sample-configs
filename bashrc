#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Paths
CDPATH='~/.paths'

###### Exports
export EDITOR=nano
export MBUILD2="/home/dm/Projects/work/mbuild2"
export RMAT="/home/dm/Projects/my/rmat"
export PATH="$PATH:/home/dm/.gem/ruby/2.0.0/bin:/home/dm/Mathworks/bin/"
export IPOD_MOUNTPOINT="/mnt/ipod/"
export ANDROID_SDK="/opt/android-sdk"

###### Aliase 
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

######
PS1='[\t \h]\n\u ~> \W \$ '
if [ -n "$SSH_CLIENT" ]; then text=" ssh"
    export PS1='[\[\e[0;31m\]\u@\h:\w${text}$\[\e[m\] ]'
fi

