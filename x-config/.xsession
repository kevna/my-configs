#start compositor
#xcompmgr -cCfF &
xcompmgr -cf &
#start unclutter (hides mouse)
unclutter &
#start nitrogen (wallpaper)
nitrogen --restore &
#start urxvt daemon
urxvtd -q -o -f &
#start file manager daemon
thunar --daemon &
#start clipboard managing daemon
parcellite -d &
