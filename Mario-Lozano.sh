#!/bin/sh
xset -dpms # disable DPMS (Energy Star) features.
xset s off # disable screen saver
xset s noblank # don't blank the video device
matchbox-window-manager & qjoypad "FOIL-Mario" &
midori -e Fullscreen -a https://phosphorus.github.io/app.html?id=148302406&turbo=false&full-screen=true
# This uses Phosophorus and Midori to run Super Mario Lozano by Punkbass and QJoyPad to configure a controller
