#!/bin/sh

if [ "$(pgrep -x compton)" ]; then
    pkill compton
else
    compton -b --config ~/.compton.conf
fi
