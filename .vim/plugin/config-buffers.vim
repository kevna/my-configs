"vim configuration - type specific
"=================================

"LaTeX
autocmd BufEnter *.tex cmap wt w \| !pdflatex % 2>texerr.log <CR>
autocmd BufEnter *.tex imap jj <esc>:wt <CR><ins><Right>

autocmd BufRead *.tex	TagbarOpen	"open taglist

autocmd BufRead *.java	TagbarOpen	"open taglist

autocmd BufRead *.c	TagbarOpen	"open taglist

autocmd BufRead,BufNewFile *.fish setfiletype fish

