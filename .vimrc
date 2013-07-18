"vim config

set mouse=a	"enable mouse interaction
syntax on	"activate syntax hilighting
set autoread	"watch for file changes
set number	"turn line numbering on
set lazyredraw 	"only redraw when neccessary
set scrolloff=7		"padding for vertical scroll
set sidescrolloff=7	"padding for horizontal scroll
set noerrorbells	"no nasty bells
set undolevels=1000	"1000 undo actions
set nowrap	"turn wrapping off
"setup wildmenu (filename tab completion)
set wildmode=longest:full	"wildmenu configuration
set wildmenu	"turn on wildmenu
"setup folding (hiding code sections)
set foldmethod=indent	"always fold over indentation
set foldcolumn=1	"force one column to show folding

filetype on		"filetype detection
filetype indent on	"filetype specific indentation
filetype plugin on	"filetype specific plugins

colorscheme candycode "set colorscheme (candycode)

"==================================================
"spell checking

if v:version >= 700
	setlocal spell spelllang=en
	nmap ss :set spell!<CR>
	set nospell
endif

"==================================================
"status line
set laststatus=2 "show status line
let &stl=" %.100f%#todo#[%{strlen(&fenc)?&fenc:'NOENC'}%Y]%#error#%r%*"	"status left (file info)
let &stl.="%=%#error#%m%*%{WordCount()}[%04c|%04l/%04L]%P"	"status right (cursor info)

"==================================================
"load NERDTree
autocmd VimEnter * NERDTree	"Start NERDTree window
autocmd VimEnter * wincmd p	"Move back to editor window
autocmd WinEnter * call NERDTreeQuit() "Call function to autoquit NERDTree on exit

