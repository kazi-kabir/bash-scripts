#!/bin/bash

open -na "Visual Studio Code" --args --new-window & 
open -na "Google Chrome" --args --new-window

osascript <<EOF
tell application "Google Chrome"
    set windowList to every window
    repeat with theWindow in windowList
        set theID to id of theWindow
        log theID
    end repeat
end tell
EOF

