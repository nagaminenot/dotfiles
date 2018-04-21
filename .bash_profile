#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# startx
[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx
