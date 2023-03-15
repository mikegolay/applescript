tell application "System Settings"
    activate
    --set current pane to pane "com.apple.preference.dock"
end tell

delay 1

tell application "System Events"
    tell dock preferences
        set properties to {screen edge:right}
    end tell
end tell

tell application "System Events"
    tell dock preferences
        set properties to {screen edge:bottom}
    end tell
end tell

delay 1

tell application "System Settings"
    quit
end tell

