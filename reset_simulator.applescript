tell application "Simulator"
    activate
end tell

tell application "System Events"
    tell process "Simulator"
        tell menu bar 1
            tell menu bar item "Device"
                tell menu "Device"
                    click menu item "Erase All Content and Settings…" --you need an elipsis here, not three periods, fyi
                end tell
            end tell
        end tell
        tell window 1
            click button "Erase"
        end tell
    end tell
end tell

-- tell application "Simulator"
-- 	quit
-- end tell