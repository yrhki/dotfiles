# Default EDITOR
export EDITOR=vim

# Directory colors
eval "$(TERM=xterm-256color dircolors ~/.dir_colors)"

# GO private
export GOPRIVATE="git.rogue.lan"

# https://unix.stackexchange.com/questions/119/colors-in-man-pages
# Color man pages
export LESS_TERMCAP_mb=$'\e[1;32m'      # Start blinking
export LESS_TERMCAP_md=$'\e[1;32m'      # Start bold mode
export LESS_TERMCAP_me=$'\e[0m'         # End of mode
export LESS_TERMCAP_se=$'\e[0m'         # End standout mode
export LESS_TERMCAP_so=$'\e[01;37m'     # Start standout mode
export LESS_TERMCAP_ue=$'\e[0m'         # End underlining
export LESS_TERMCAP_us=$'\e[1;4;31m'    # Start underlining

# XDG directories
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share

# Use XDG_CONFIG_HOME
alias xbindkeys='xbindkeys -f "$XDG_CONFIG_HOME/xbindkeysrc"'   # xbindkeys 

# Use XDG_DATA_HOME
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"         # Wine use 'default' prefix
export ATOM_HOME="$XDG_DATA_HOME/atom"                          # Atom
export CARGO_HOME="$XDG_DATA_HOME/cargo"                        # Cargo
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"                 # Gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"           # GTK 2
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"       # npm
export WGETRC="$XDG_CONFIG_HOME/wgetrc"                         # wget

