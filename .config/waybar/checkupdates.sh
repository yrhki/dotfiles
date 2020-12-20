#!/bin/bash



tooltip=$(checkupdates 2>/dev/null)
count=$(wc -l <<< "$tooltip")
percentage=0

if [[ -z "$tooltip" ]]; then
    text="No Updates"
else
    text="$count Packages"
fi


echo "{\"text\": \"$text\", \"alt\": \"$alt\", \"tooltip\": \"as\", \"class\": \"$class\", \"percentage\": $percentage }" | jq -c ".tooltip = \"$tooltip\""
