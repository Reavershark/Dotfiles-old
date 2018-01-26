if [ ! -e /tmp/.autostartx.lock ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  touch /tmp/.autostartx.lock
  startx /usr/bin/i3
  exit
fi
