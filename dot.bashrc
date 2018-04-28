#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# start fish
[[ $DISPLAY == ":0" && $XDG_VTNR -eq 1 ]] && exec fish
