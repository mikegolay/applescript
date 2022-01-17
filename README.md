# applescripts for your daily use and enjoyment

various hacky scripts to do hacky things on macos, usually with the goal of clicking a little less, to eliminating clicks altogether.

in general i would recommend creating an alias in `zsh` or `bash`, depending on which you're using, and pointing to your script, like so:<br>
`alias [your_alias_name]="osascript ~/[path to your aliases]/applescripts/[your_alias_name].applescript"`

and then running from terminal.

here we go.

## the scripts

**dock.applescript** - if you're using multiple monitors, say, a laptop and a secondary monitor, macos dock will seemingly randomly flip position between the two display as you mouse between them (it happens when you mouse outside of the display boundary). bug or feature? no one knows. there are workarounds to keep this from happening, such as toggling "displays have different spaces" in mission control, but that solution has drawbacks, and for me, it's not foolproof. what does work is opening system preferences, going to the dock & menu bar pane, and resetting position. that's what this script does. it could be cleaner, but it's quick, and it works. 
