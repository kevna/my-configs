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
alias _s="sudo systemctl"
alias _w="sudo wifi-menu"
alias _n="sudo netctl"
alias packer="packer-color"
#git ailiases
alias gitc="git checkout"
alias gits="git status -s"
alias v="vim"

#add EDITOR variable
export EDITOR="vim"
#add scripts directory to path
export PATH=${PATH}:~/scripts

if [[ $- == *i* ]]; then
	function tick {
		if [[ $1 == 0 ]]; then
			printf "\e[1;32m\342\234\223"
		else
			printf "\e[1;31m%s" $1
		fi
	}
	function gitChanges {
		tick $(git status -s | grep -vc ^[ADMR])
	}
	#modify prompt
	#set prompt-drawing variables
	lineColour="\[\e[0;37m\]"
	gitThing="\$(if [[ \$gitB != \"\" ]]; then echo \" \$(tick \$(git status -s | grep -vc ^[MRDA]))\$(echo \"\$gitB\" | grep \* | sed s/[^a-z\-]//g)\"; fi)"
	topLeft="\342\224\214"
	leftTee="\342\224\234"
	theLine="\342\224\200"
	lineEnd="\342\225\274"
	passTick="\[\e[1;32m\]\342\234\223"
	#hack to get errorcode after $(script) execution
	export PROMPT_COMMAND="errorCode=\$?; gitB=\"\$(git branch 2>/dev/null)\""
	export PS1="${lineColour}${topLeft}${lineEnd}\[\e[1;37m\]\u${lineColour}(\[\e[0;36m\]\l${lineColour}:\[\e[0;95m\]\j${lineColour})\[\e[0;32m\]@\[\e[1;32m\]\H$(if [[ -f ~/.batstring ]]; then echo "${lineColour}[\$(~/.batstring)${lineColour}]"; fi)\[\e[0;34m\]:\[\e[1;34m\]\w${lineColour}${gitThing}
${lineColour}${leftTee}\$(tick \$errorCode)${lineColour}${theLine}\!${theLine}${lineEnd}\[\e[m\]"
	export PS2="${lineColour}${leftTee}${lineEnd}\[\e[m\]"
	export PS4="\[\e[1;34m\]${0}${lineColour}(\[\e[1;32m\]${LINENO}${lineColour})+\[\e[m\]"
	# remove prompt-drawing variables
	unset passTick
	unset lineEnd
	unset theLine
	unset leftTee
	unset topLeft
	unset gitThing
	unset lineColour
	
	#echo attached display (or no display)
	if [ "$DISPLAY" == "" ]; then
	        echo "No Display attached."
	else
	        echo "$DISPLAY"
	fi
fi

