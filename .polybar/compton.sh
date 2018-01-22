#!/bin/sh

if [ "$(pgrep -x compton)" ]; then
    pkill compton
else
    compton -b --config ~/.config/compton.conf
fi
