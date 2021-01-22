prompt_command() {
    local PREVRET=$?
    local DC UC HC PC SC
    DC='\e[0m'  # Disable color
    UC='\e[38;5;245m'
    HC='\e[38;5;245m'
    PC='\e[38;5;73m'

    [ "$PREVRET" -ne "0" ] && SC='\e[38;5;197m'

    #PS1="[${UC}\u${DC}@${HC}\h \[${PC}\]\W\[${DC}\]]\[${SC}\]\$\[${DC}\] "
    #PS1="[${UC}\u${DC}@${HC}\h \[${PC}\]\W\[${DC}\]]$ "
    PS1="[\[${UC}\]\u\[${DC}\]@\[${HC}\]\h \[${PC}\]\W\[${DC}\]]\[${SC}\]$\[${DC}\] "
}

PROMPT_COMMAND=prompt_command
