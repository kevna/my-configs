function tick
	for val in (seq (count $argv))
		if [ "$argv[$val]" = 0 ]
			printf '%s\u2713' (set_color -o green)
		else
			printf '%s%s' (set_color -o red) $argv[$val]
		end
		if [ $val -lt (count $argv) ]
			printf ' '
		end
	end
end

