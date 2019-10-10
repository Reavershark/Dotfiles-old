#PATH="/usr/sbin:/sbin:/bin:/usr/games:$PATH"
export QT_STYLE_OVERRIDE=gtk2
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
if [ ! -e /tmp/.autostartx.lock ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  touch /tmp/.autostartx.lock
  startx /usr/bin/i3
  exit
fi
