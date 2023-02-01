#!/bin/bash

# The reminder text
reminder_text="$1"

# Create the reminder
osascript <<EOF
tell application "Reminders"
  tell the default list
    make new reminder with properties {name:"$reminder_text"}
  end tell
end tell
EOF

echo "Reminder created: $reminder_text"