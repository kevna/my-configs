"vim configuration - keymapping
"==============================

"maps using leader
let mapleader = ","
map <leader>n	:NERDTreeToggle %:p:h<CR>
map <leader>p	:set paste!<CR>
map <leader>t	:TlistToggle<CR>

"--------------------------------------------------
"insert mode keymaps

"map jj in insert mode to write file (save)
imap jj		<esc>:w<CR><ins><Right>
"map tab to autocomplete wrapper function
"imap <tab>	<c-r>=InsertTabWrapper()<CR>

"--------------------------------------------------
"'normal' mode keymaps
nnoremap ; :

nmap <Left>	<Nop>
nmap <Right>	<Nop>
nmap <Up>	<Nop>
nmap <Down>	<Nop>

if v:version >= 700
	nmap ss :set spell!<CR>
endif

"--------------------------------------------------
"visual mode keymaps
vnoremap ; :

"--------------------------------------------------
"command keymaps

"map w!! to hack for write as sudo
cmap w!!	w !sudo tee > /dev/null %<CR>
