-- open system preferences and switch to the dock pane

tell application "System Preferences"
    activate
set current pane to pane "com.apple.preference.dock"
end tell

-- set dock to right - this is a hack to move position

tell application "System Events"
    tell dock preferences
        set properties to {screen edge:right}
    end tell
end tell

-- set dock to bottom - this should move the dock back to the primary monitor

tell application "System Events"
    tell dock preferences
        set properties to {screen edge:bottom}
    end tell
end tell

-- then close preferences and move on with life

tell application "System Preferences"
	quit
end tell