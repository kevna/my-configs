Arch Linux Configuration
========================

My arch linux configuration files for openbox, bash, git, tmux & vim.

rc.xml
------
~/.config/openbox/rc.xml is the configuration file used by the openbox window manager (or openbox-multihead-git in my case).
Features in my rc.xml include:
* basic modifications that can be done in obconf
* keybind constructs
	- F12 for [urxvtq] [1]
	- super-l to lock the computer
	- super-c to run an ssh session to the server 'central' (using urxvtc)
	- super-x to do the above with an X forwarding session
	- super-v to open a vim instance (in urxvtc)
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
user(virtualTerminal:backgroundProcessCount)@hostname[battery]:directory ∓branch(changes)<br />
|-errorCode-historyNumber--

The battery information is gathered using the external script .batstring.
The ∓ flag (git logo) appears when the present working directory is a git repo,
when it appears it is followed by the name of the currently active branch and
(in the brackets) the number of un-commited changes.
and the error code is replaced with a green tick if 0 (clean exit).

A wealth of information on configuring and colouring bash prompts can be found on the [ArchWiki] [2]

### .batstring
~/.batstring is a simple script only used by my bash prompt.
It uses acpi to capture the battery state as a percentage remaining charge.
For quick reading the battery value is colour coded:
* bold white - full
* plain cyan - discharging
* plain red  - low (< 1/4)
* flash red  - danger (< 10%)
* bold cyan  - charging
(bold white is also used to catch other battery states that may occur)

.vim & .vimrc
-------------
In order to maintain clarity in my .vimrc file I have outsourced some of my vim configuration to files at .vim/plugin/config-\* as .vim/plugin is also sourced upon vim startup.

### vim plugins
The plugins written by other people that I use are as follows:
* [NERDTree] (http://www.vim.org/scripts/script.php?script_id=1658)
* [taglist] (http://www.vim.org/scripts/script.php?script_id=273)
* [AutoClose] (http://www.vim.org/scripts/script.php?script_id=2009)

### .vim/plugin/config-functions.vim
Currently this file contains two functions:
* WordCount allows me to see a count of words in the current file (used in my status line)
* NERDTreeQuit is a hack to auto-close the NERDTree plugin if it is the last window to remain open
* InsertTabWrapper is a wrapper function for the tab command, if there is text immediately to the left it attempts to complete it, else it inserts a tab character

### .vim/plugin/config-keymaps.vim
This file holds all the keymaps I use in my vim configuration:
* insert mode
	- jj switches to command mode (w)rites the file
	- <tab> calls the InsertTabWrapper function for completion (can be bypassed by using Shift-Tab)
* command mode
	- w!! writes the file using the 'write as sudo' hack
	- wt writes the file and automatically compiles it using my [comptex script] [3]
	- tt toggles Tlist on or off

### .vim/colors/candycode.vim
In majority this is the standard [candycode] [4] color scheme which is designed for use with gvim.
In order to use the scheme with vim in my terminal sessions with transparency I had to remove the background color setting that is otherwise overlaid on the background.
This is done by setting:
```vimL
hi normal ctermbg=NONE
```

[1]: https://wiki.archlinux.org/index.php/Rxvt-unicode#Improved_Kuake-like_Behavior_in_Openbox
[2]: https://wiki.archlinux.org/index.php/Color_Bash_Prompt
[3]: https://github.com/kevna/my-scripts#comptex
[4]: https://github.com/vim-scripts/candycode.vim

