Arch Linux Configuration
========================

My arch linux configuration files for openbox, bash, tmux & vim.

An Example of my two line bash prompt can be seen in "terminal-screenshot.png".
The prompt can be read as follows:<br />
user(virtualTerminal:backgroundProcessCount)@hostname[battery]:directory ∓<br />
\-errorCode-historyNumber--

Where the battery value is colour coded:
<dl>
<dt>bold white</dt><dd>full</dd>
<dt>plain cyan</dt><dd>discharging</dd>
<dt>plain red</dt><dd>low (< 1/4)</dd>
<dt>flash red</dt><dd>danger (< 10%)</dd>
<dt>bold cyan</dt><dd>charging
(bold white is also used to catch other battery states that may occur)</dd>
</dl>

The ∓ flag (git logo) appears when the present working directory is a git repo,
and the error code is replaced with a green tick if 0 (clean exit).

A wealth on information on configuring bashrc can be found on the [ArchWiki] [1]

[1]: https://wiki.archlinux.org/index.php/Color_Bash_Prompt

