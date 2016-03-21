#!/bin/bash

tex=$(echo $1 | sed 's/_VOOM1//g')
pdf=${1%.*}.pdf
tex=$(ls | grep $tex)
if [[ $tex ]]; then
    if !(xdotool search --onlyvisible --class "Zathura"); then
        zathura > /dev/null 2>&1 $pdf &
        while true; do
            curwin=$(xdotool getactivewindow)
            if (xprop -id $curwin | grep -i "wm_class.*zathura"); then
                i3-msg -q resize shrink width 50 px or 10 ppt
                i3-msg -q focus left
                break
            fi
        done
    else
        zathura --synctex-forward ${2}:1:${1} ${pdf}
    fi
fi