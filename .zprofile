if [ ! -e "/tmp/.tty1.lock" ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  touch /tmp/.tty1.lock
  startx /usr/bin/i3
fi
