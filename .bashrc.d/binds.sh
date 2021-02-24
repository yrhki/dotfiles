
bind -x '"\eg": "git status"'       # Git status (Alt + g)
bind -x '"\el": "l"'                # ls dir (Alt + l)
bind -x '"\ec": "_cm_wrap"'         # cm with READLINE_LINE (Alt + c)

#bind -m vi-command v:edit-and-execute-command
bind -m vi-command -x '"v": "_edit_command"'

bind TAB:menu-complete
bind '"\e[Z"':menu-complete-backward

