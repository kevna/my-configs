Arch Linux Configuration
========================

My arch linux configuration files for openbox, bash, tmux & vim.

rc.xml
------
~/.config/openbox/rc.xml is the configuration file used by the openbox window manager (or openbox-multihead-git in my case).
Features in my rc.xml include:
* basic modifications that can be done in obconf
* keybind constructs
	- F12 for [urxvtq] [1]
	- super-l to lock the computer
	- super-c to run an ssh session to the server 'central'
	- super-x to do the above with an X forwarding session
	- super-e to run thunar (gui file browser)
	- PrtScr & ctrl-PrtScr for printscreen functionality
	- fn-key volume controls (& show level using notify-osd)
	- super-< & super-> to snap windows left and right
	- super-^ maxmize (shade if maximized)
	- super-v restore down (shade if already unmaximized)
	- super-+ add a workspace at the end of the current list
	- super-bkspc remove the current workspace (windows shuffle to previous workspace)
	- super-d show desktop
* mousebind modifications
	- removed unfocus from scroll on titlebar (now only shade/unshade)
* added application properties for [urxvtq] [1]

.bashrc
-------
An example of my two line bash prompt can be seen in "terminal-screenshot.png".<br />
The prompt can be read as follows:<br />
user(virtualTerminal:backgroundProcessCount)@hostname[battery]:directory ∓<br />
|-errorCode-historyNumber--

Where the battery value is colour coded:
* bold white - full
* plain cyan - discharging
* plain red  - low (< 1/4)
* flash red  - danger (< 10%)
* bold cyan  - charging
(bold white is also used to catch other battery states that may occur)

The ∓ flag (git logo) appears when the present working directory is a git repo,
and the error code is replaced with a green tick if 0 (clean exit).

A wealth of information on configuring and colouring bash prompts can be found on the [ArchWiki] [2]

### .batstring

[1]: https://wiki.archlinux.org/index.php/Rxvt-unicode#Improved_Kuake-like_Behavior_in_Openbox
[2]: https://wiki.archlinux.org/index.php/Color_Bash_Prompt

