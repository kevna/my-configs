"vim configuration - keymapping
"==============================

"--------------------------------------------------
"insert mode keymaps

"map jj in insert mode to write file (save)
imap jj <esc>:w<CR><ins><Right>

"--------------------------------------------------
"command keymaps

"map w!! to hack for write as sudo
cmap w!! w !sudo tee > /dev/null % <CR>
"map tt to TlistToggle for switching taglist
cmap tt TlistToggle <CR>
