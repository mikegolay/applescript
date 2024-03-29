# applescripts for your daily use and enjoyment

various hacky scripts to do hacky things on macos, usually with the goal of clicking a little less, ideally eliminating clicks altogether. should you, at this point, look for other ways to do things on macos, mostly from the command line? i mean, probably?

anyhoo.

## how to use

in general i would recommend creating an alias in `zsh` or `bash`, depending on which you're using, and pointing to your script, like so:<br>
`alias [your_alias_name]="osascript ~/[path to your scripts]/[your_script_name].applescript"`

and then running from terminal. you could also create a macos keyboard shortcut that corresponds to the command. for maximum laziness, run these commands from stream deck buttons. so lazy! :robot:

here we go.

## the scripts

### stuff to make life a little easier

#### **dock.applescript**<br>
if you're using multiple monitors, say, a laptop and a secondary monitor, macos dock will seemingly randomly flip position between the two displays as you mouse between them (it happens when you mouse outside of the display boundary when moving between displays, which, i must add, is inevitable). bug or feature? no one knows. there are workarounds to keep this from happening, such as toggling "displays have different spaces" in mission control system preferences, but that solution has drawbacks, and for me, it's not foolproof. what does work is opening system preferences, going to the dock & menu bar pane, and resetting position away from your default (mine is `{screen edge:bottom}`) and back to the default. so many clicks, gosh! anyway, that's what this script does. it could be cleaner, but it's quick, and it works. all i have to do to fix dock position - and this happens to me dozens of times a day - is type `dock` in terminal. the script does the rest. that's what we'll have to live with until apple adds a preference to keep the dock fixed, which they totally should do. but no.

ventura broke the script above. here's [an updated version](dock_ventura.applescript) that works on that os version.

### xcode scripts

for many years i've worked in testing and development of ios applications. that's meant a lot of time in xcode, which is a great IDE, and ios simulator, which is so much better than android options, [ducks]. all this said, the necessary steps of building, running, stopping, cleaning, resetting simulator, etc., can be terribly time consuming. the scripts below are very simple attempts at automating some of this flow. again, the approach i use is creating aliases for the commands and running them from terminal. for a number of more complex tasks, you can chain those commands together and run from a single command, for example `alias [your_combined_alias_name]="stopxcode && cleanxcode && quitxcode"` to do something like stop, clean and quit xcode. experiment to see what works best for your workflow. for the last example, it may be advisable to add a `sleep` here and there so your ruthlessly efficient scripting doesn't overrun the whole circus, ya freakin' wizard.

it should be noted that starting around xcode 9, `xcrun` gives you a lot of these actions on the command line, and that's probably a more maintainable way to go, moving forward.

#### **run_xcode.applescript**<br>
run the build. you could create an alias to first `git pull` some code, then `&& runxcode`, as an example.

#### **clean_xcode.applescript**<br>
clean the build.

#### **stop_xcode.applescript**<br>
stop the build.

#### **quit_xcode.applescript**<br>
quit xcode.

#### **quit_simulator.applescript**<br>
quit the ios simulator. there are a lot of ways to do this (`xcrun simctl shutdown all` is a better path for some workflows), and this simple app `tell` is what's up. i'd commonly use this paired with other commands. it's a good thing to break it out so you can call and use it where you need it.

#### **reset_simulator.applescript**<br>
this is one that continually evolves, as does xcode and the simulators. which is why stuff breaks, thanks. right now there's an issue getting to the `Erase` button, so you have to hit that manually, and pretty quickly, before the script errors out. i will continue to beat myself up about it until i figure it out. there are [other approaches](https://medium.com/xcblog/simctl-control-ios-simulators-from-command-line-78b9006a20dc) with `xcrun` as well.
