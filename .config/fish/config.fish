set -x LANG en_GB.UTF-8
set -x GREP_COLORS "ms=01;31"

set fish_color_command -o green
set fish_color_error -o red
set fish_color_operator -o blue

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch blue

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

# vlc aliases
alias ncvlc "nvlc -f --no-color"
alias nvlcp "nvlc -f vlc://pause"
alias ncvlc "ncvlc -f vlc://pause"
# ls aliases
alias ls "ls -F --group-directories-first --color=auto"
alias l "ls -l"
alias la "ls -la"
alias lsa "ls -a"
alias lsf "lsa |grep"
# packer
alias packer packer-color
# git aliases
alias gitc "git checkout"
alias gits "git status -s"
# alias for vim
alias v vim
alias ! sudo
alias please sudo

set fish_greeting #(fortune)
# set -U fish_user_paths $fish_user_paths ~/scripts
# set -U EDITOR vim

