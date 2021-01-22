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

for bashrc in ~/.bashrc.d/*.sh; do
    source "$bashrc"
done

