if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.xprofile   ]] && source ~/.xprofile



## Start gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

setxkbmap si



## Start VM provided by argument(given by slim).
## TODO: Set default value if nothing exists
exec $1

