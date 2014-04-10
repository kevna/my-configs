function ingitr -d "test if currently in a git repo"
	if [ (echo \"(git branch 2>/dev/null)\") = "" ]
		return 1
	else
		return 0
	end
end
