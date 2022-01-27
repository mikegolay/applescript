tell application "Xcode"
    activate
end tell

tell application "System Events"
    tell process "Xcode"
        tell menu bar 1
            tell menu bar item "Product"
                tell menu "Product"
                    click menu item "Clean"
                end tell
            end tell
		end tell
    end tell
end tell