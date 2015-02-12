[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

## Start gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

setxkbmap si 

## Notification daemon
dunst -config ~/.i3/config_dunst &


## Start VM provided by argument(given by slim).
## TODO: Set default value if nothing exists
exec $1

