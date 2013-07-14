"vim configuration - functions
"=============================

"--------------------------------------------------
"wordcount function
function! WordCount()
	let s:old_status = v:statusmsg
	let position = getpos(".")
	exe "silent normal g\<c-g>"
	let stat = v:statusmsg
	let s:word_count = 0
	if stat != '--No lines in buffer--'
	let s:word_count = str2nr(split(v:statusmsg)[11])
	let v:statusmsg = s:old_status
	end
	call setpos('.', position)
	if s:word_count == 0
		return ''
	else
		return s:word_count
	endif
endfunction

"--------------------------------------------------
"automatically quit NERDTree if it is the last remaining window
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction

