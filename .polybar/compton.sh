#!/bin/sh

if [ "$(pgrep -x compton)" ]; then
    pkill compton
else
    compton -b --config ~/.compton.conf --paint-on-overlay --unredir-if-possible --backend xr_glx_hybrid --vsync drm --glx-swap-method -1 --glx-no-stencil
fi
