# applescripts for your daily use and enjoyment

various hacky scripts to do hacky things on macos, usually with the goal of clicking a little less, ideally eliminating clicks altogether.

## how to use

in general i would recommend creating an alias in `zsh` or `bash`, depending on which you're using, and pointing to your script, like so<br>
`alias [your_alias_name]="osascript ~/[path to your scripts]/applescripts/[your_script_name].applescript"`

and then running from terminal. you could also create a macos keyboard shortcut. for maximum laziness, run these commands from stream deck buttons. so lazy! :robot:

here we go.

## the scripts

**dock.applescript** - if you're using multiple monitors, say, a laptop and a secondary monitor, macos dock will seemingly randomly flip position between the two displays as you mouse between them (it happens when you mouse outside of the display boundary when moving between displays). bug or feature? no one knows. there are workarounds to keep this from happening, such as toggling "displays have different spaces" in mission control system preferences, but that solution has drawbacks, and for me, it's not foolproof. what does work is opening system preferences, going to the dock & menu bar pane, and resetting position away from your default (mine is `{screen edge:bottom}`) and back to the default. so many clicks, gosh! anyway, that's what this script does. it could be cleaner, but it's quick, and it works. all i have to do to fix dock position - and this happens to me dozens of times a day - is type `dock` in terminal. the script does the rest.

**run_xcode.applescript** - to be tweaked, coming soon.

**clean_xcode.applescript** - to be tweaked, coming soon.

**quit_xcode.applescript** - to be tweaked, coming soon.

**reset_simulator.applescript** - to be tweaked, coming soon.
