#!/usr/bin/env bash
#
# ~/.bashrc
#

[[ $- != *i* ]] && return
export HISTTIMEFORMAT="%FT%T%z "
export HISTSIZE=-1
export HISTFILESIZE=-1

[ -f ~/.profile ] && source ~/.profile  # Global profile
[ -f ~/.aliases ] && source ~/.aliases  # Global aliases

shopt -s checkwinsize       # check window size after each command and update LINES and COLUMNS
shopt -s expand_aliases     # expand aliases
shopt -s histappend         # Append to history instead of overwriting

PS1="[\u@\h \W]$ "
PS1="[\[$(tput setaf 2)\u@\h$(tput setaf 7) $(tput setaf 6)\W$(tput setaf 7)]$ \e[0m\]"
PS1='[\e[32m\u@\h \W]$ \[\e[0m\]'
PS1="[\[\e[32m\u@\h \W\e[0m\]]$ "
PS1="[\[\e[38:5:245m\]\u@\h \[\e[38:5:73m\]\W\[\e[0m\]]$ "
PS1="[\[$(tput setaf 245)\]\u@\h \[$(tput setaf 73)\]\W\[\e[0m\]]$ "

[ -r /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion  # Bash completion



bind -x '"\eg": "git status"'
bind -x '"\el": "ls --color"'
bind TAB:menu-complete
