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
alias packer="packer-color"

#add EDITOR variable
export EDITOR="vim"
#add scripts directory to path
export PATH=${PATH}:~/scripts

#modify prompt
#hack to get errorcode after $(script) execution
export PROMPT_COMMAND="es=\$?"
export PS1="\[\e[0;37m\]\u\[\e[0;32m\]@\[\e[1;32m\]\h\[\e[0;37m\][\$(/home/aaron/.batstring)\[\e[0;37m\]]\[\e[0;34m\]:\[\e[1;34m\]\w \
\$(if [[ \$es == 0 ]]; then echo \"\[\e[1;32m\]\342\234\223\"; else echo \"\[\e[0;91m\]\$es\"; fi)\[\e[m\]\$ "

#echo attached display (or no display)
if [ "$DISPLAY" == "" ]; then
        echo "No Display attached."
else
        echo "$DISPLAY"
fi

