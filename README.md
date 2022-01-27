# applescripts for your daily use and enjoyment

various hacky scripts to do hacky things on macos, usually with the goal of clicking a little less, ideally eliminating clicks altogether.

## how to use

in general i would recommend creating an alias in `zsh` or `bash`, depending on which you're using, and pointing to your script, like so<br>
`alias [your_alias_name]="osascript ~/[path to your scripts]/[your_script_name].applescript"`

and then running from terminal. you could also create a macos keyboard shortcut that corresponds to the command. for maximum laziness, run these commands from stream deck buttons. so lazy! :robot:

here we go.

## the scripts

### stuff to make life a little easier

**dock.applescript** - if you're using multiple monitors, say, a laptop and a secondary monitor, macos dock will seemingly randomly flip position between the two displays as you mouse between them (it happens when you mouse outside of the display boundary when moving between displays). bug or feature? no one knows. there are workarounds to keep this from happening, such as toggling "displays have different spaces" in mission control system preferences, but that solution has drawbacks, and for me, it's not foolproof. what does work is opening system preferences, going to the dock & menu bar pane, and resetting position away from your default (mine is `{screen edge:bottom}`) and back to the default. so many clicks, gosh! anyway, that's what this script does. it could be cleaner, but it's quick, and it works. all i have to do to fix dock position - and this happens to me dozens of times a day - is type `dock` in terminal. the script does the rest. that's what we'll have to live with until apple adds a preference to keep the dock fixed, which they totally should do. but no.

### xcode scripts

for many years i've worked in testing and development of ios applications. that's meant a lot of time in xcode, which is a great IDE. this said, the necessary stops of building, running, stopping, cleaning, resetting simulator, etc., can be terribly time consuming. the scripts below are very simple attempts at automating some of this flow. again, the approach i use is creating aliases for the commands and running them from terminal. for a number of more complex tasks, you can chain those commands together and run from a single command, for example `alias [your_alias_name]="osascript ~/[path to script]/stopxcode.applescript && cleanxcode && quitxcode` to do something like stop, clean and quit xcode. experiment to see what works best for your workflow. for the last example, it may be advisable to add a `sleep` here and there so your ruthlessly efficient scripting doesn't overrun the whole circus, ya freakin' wizard.

**run_xcode.applescript** - run the build. you could create an alias to first `git pull` some code, then `&& runxcode`, as an example.

**clean_xcode.applescript** - clean the build.

**quit_xcode.applescript** - quit xcode.

**reset_simulator.applescript** - to be tweaked, coming soon. the simulator keeps evolving (a good thing), and i have a little work to do to update this one.
