

# Stop saving to history
private() {
    unset HISTFILE
}
export -f private

# Take command line input to cm
_cm_wrap() {
    cm "$READLINE_LINE"
}
export -f _cm_wrap

# Similar to edit-and-execute-command but not executing after editing
_edit_command() {
    local TEMP=$(mktemp -t "bash-command.XXXXXXXXXX")
    echo "$READLINE_LINE" > "$TEMP"
    "${EDITOR:-vi}" "$TEMP"
    READLINE_LINE=$(cat "$TEMP")
    rm "$TEMP"
}
export -f _edit_command
