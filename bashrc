#iso date/time
alias isotime='notify-send "$(date +%Y-%m-%dT%H:%MZ)"'
#vlc commandline
alias ncvlc="nvlc -f --no-color"
alias nvlcp="nvlc -f vlc://pause"
alias ncvlcp="ncvlc -f vlc://pause"
#make ls show directories first
alias ls="ls --color=auto --group-directories-first"
alias l="ls -l"
alias la="ls -la"
alias lsa="ls -a"
#underscore emulates sudo
alias _="sudo"
alias _!="sudo !!"
alias _pacman="sudo pacman --color auto"
alias packer="packer-color"

#add EDITOR variable
export EDITOR="vim"
#add scripts directory to path
export PATH=${PATH}:~/scripts
#modify prompt
export PS1="\[\e[0;37m\]\u\[\e[0;32m\]@\[\e[1;32m\]\h\[\e[m\]\[\e[0;37m\][\[\e[1;36m\]\$(acpi | awk '{print \$4}' | sed \"s/[^0-9]//g\")\[\e[0;37m\]]\[\e[0;34m\]:\[\e[1;34m\]\w \[\e[0;31m\]\$?\[\e[m\]\$ "

#echo attached display (or no display)
if [ "$DISPLAY" == "" ]; then
        echo "No Display attached."
else
        echo "$DISPLAY"
fi

