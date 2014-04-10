function gitstring
	printf ' %s%s' (tick (git status -s | grep -vc "^[ADMR]")) (git branch | grep "*" | sed "s/[^A-Za-z_\-]//g")
end
