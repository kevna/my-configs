"vim config

set nocompatible		"don't use vi compatibility
set encoding=utf-8
set shell=bash
set mouse=a			"enable mouse interaction
syntax enable			"activate syntax hilighting
set showmode			"always show mode
set autoread			"watch for file changes
set number			"turn line numbering on
set cursorline			"show line of cursor
set lazyredraw 			"only redraw when neccessary
set backspace=2			"fix backspace
set scrolloff=7			"padding for vertical scroll
set sidescrolloff=1		"padding for horizontal scroll
set noerrorbells		"no nasty bells
set undolevels=100		"100 undo actions
set nowrap			"turn wrapping off
set modeline			"modeline reads settings from the top of a file
"place backup files
set backupdir=./.backup,.,/tmp	"backupdir controls the destination for backup files (try .backup then ./ else /tmp)
set directory=./.backup,.,/tmp	"directory controls the destination for swap files
"setup wildmenu (filename tab completion)
"set wildmode=longest:full	"wildmenu configuration (zsh styled)
set wildmode=list:longest	"wildmenu configuration (bash styled)
set wildmenu			"turn on wildmenu
"setup folding (hiding code sections)
set foldmarker={,}		"set to fold around {} blocks
set foldmethod=indent		"always fold over indentation
set foldcolumn=1		"force one column to show folding
"indentation settings
set autoindent			"indent automatically
set smartindent			"use smart 'autoindent'
set noexpandtab			"don't turn tabs into spaces
"customize search
set hlsearch			"hilight search matches
set incsearch			"search incrementaly (match as you type)
set ignorecase			"case insensitive search
set smartcase			"search is case sensetive if searchstring contains caps
"setup 'list'
set listchars=tab:>\ ,trail:-,precedes:<,extends:>
set list

filetype on			"filetype detection
filetype indent on		"filetype specific indentation
filetype plugin on		"filetype specific plugins
set omnifunc=syntaxcomplete#Complete	"turn on omni complete (use ^X^O to activate)

"VimFiler
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_readonly_file_icon = ''
let g:vimfiler_marked_file_icon = '*'

" vundle
call vundle#rc()
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-startify'
"Plugin 'Townk/vim-autoclose'
Plugin 'ryanoasis/vim-devicons'

let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"colorschemes: candycode, torte, jellybeans
colorscheme jellybeans

"==================================================
"spell checking

if v:version >= 700
	setlocal spell spelllang=en
	set nospell
endif

"==================================================
"status line
set laststatus=2 "show status line

"let &stl=" %.100f %#todo#[%{strlen(&fenc)?&fenc:'NOENC'}%Y]%*%{fugitive#statusline()}%#error#%r%*"	"status left (file info)
"let &stl.="%=%#error#%m%*%{WordCount()}[%04c|%04l/%04L]%P"	"status right (cursor info)

let g:airline_mode_map = {
	\ '__' : '-',
	\ 'n'  : 'N ',
	\ 'i'  : 'I ',
	\ 'R'  : 'R ',
	\ 'c'  : 'C ',
	\ 'v'  : 'V ',
	\ 'V'  : 'Vl',
	\ '' : 'Vb',
	\ 's'  : 'S',
	\ 'S'  : 'S',
	\ '' : 'S',
	\ }

if $term != "linux"
	let g:airline_powerline_fonts=1

	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif
"	let g:airline_left_sep = ''
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
"	let g:airline_symbols.branch = '⎇'
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.whitespace = 'Ξ'
	let g:airline_symbols.linenr = ''
	let g:airline_section_z = '%{WordCount()} %03c:%03l/%03L'
	let g:airline#extensions#tabline#enabled = 1
"	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#syntastic#enabled = 1

	"let g:airline_theme='murmur'
	let g:airline_theme="jellybeans"
else
	colorscheme torte
endif
set ttimeoutlen=50

"==================================================
"load NERDTree
autocmd WinEnter * call NERDTreeQuit() "Call function to autoquit NERDTree on exit

"==================================================
"tell syntastic to ignore files it can`t analise properly
let g:syntastic_ignore_files = ['.md$']
