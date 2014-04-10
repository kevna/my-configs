function fish_prompt
	set laststatus $status
	set_color white
	printf '\u250C\u257C%s' (whoami)
	printf '%s@%s%s\e[m' (set_color green) (set_color -o green) (hostname)
	if [ -e ~/.batstring ]
		printf '%s[%s%s]' (set_color white) (~/.batstring) (set_color white)
	end
	printf '%s:%s%s' (set_color blue) (set_color -o blue) (prompt_pwd)
	
	if ingitr
		gitstring
	end

	set_color normal
	set_color white
	printf '\n\u251C%s%s\u2500\u257C' (tick $laststatus) (set_color white)
	set_color normal
end

