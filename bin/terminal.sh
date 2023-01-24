#!/usr/bin/env bash

### terminal.sh
### cwillsey06
### 2022-09-26 [03:59]

launch_alacritty="alacritty --config-file $HOME/.config/hypr/themes/active/alacritty/alacritty.yml"

case $1 in
    --float)
    shift
    $launch_alacritty --class 'alacritty-float,alacritty-float' $@
    ;;
    --full)
    shift
    $launch_alacritty --class 'Fullscreen,Fullscreen'                     \
                       -o window.startup_mode=fullscreen          \
                          window.padding.x=30 window.padding.y=30 \
                          window.opacity=0.95 font.size=14        \
                        $@
    ;;
    '')
    shift
    $launch_alacritty $@
    ;;
esac

