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
#set "line colour" variable
lineCol="\[\e[0;37m\]"
#hack to get errorcode after $(script) execution
export PROMPT_COMMAND="errorCode=\$?; gitB=\$(git branch 2>/dev/null)"
export PS1="${lineCol}\342\224\214\342\225\274\[\e[1;37m\]\u${lineCol}(\[\e[0;36m\]\l${lineCol}:\[\e[0;95m\]\j${lineCol})\[\e[0;32m\]@\[\e[1;32m\]\H$(if [[ -f ~/.batstring ]]; then echo "${lineCol}[\$(~/.batstring)${lineCol}]"; fi)\[\e[0;34m\]:\[\e[1;34m\]\w${lineCol}\$(if [[ \$gitB != \"\" ]]; then echo \" \[\e[1;44m\]\342\210\223\[\e[0;34m\]\$(echo -n \"\$gitB\" | sed s/[^a-z]//g)${lineCol}\"; fi)
\342\224\234\$(if [[ \$errorCode == 0 ]]; then echo \"\[\e[1;32m\]\342\234\223\"; else echo \"\[\e[0;91m\]\$errorCode\"; fi)${lineCol}\342\224\200\!\342\224\200\342\225\274$(if [[ $TERM != "rxvt-unicode-256color" ]]; then echo "\360\235\204\236"; fi)\[\e[m\]"
export PS2="${lineCol}\342\224\234\342\225\274\[\e[m\]"
export PS4="\[\e[1;34m\]${0}${lineCol}(\[\e[1;32m\]${LINENO}${lineCol})+\[\e[m\]"
# remove "line colour" variable
unset lineCol

#echo attached display (or no display)
if [ "$DISPLAY" == "" ]; then
        echo "No Display attached."
else
        echo "$DISPLAY"
fi

