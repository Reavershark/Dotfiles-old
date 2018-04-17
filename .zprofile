export XCURSOR_SIZE=41
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_STYLE_OVERRIDE=gtk2
if [ ! -e /tmp/.autostartx.lock ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  touch /tmp/.autostartx.lock
  startx /usr/bin/i3
  exit
fi
