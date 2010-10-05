#!/usr/bin/env bash

## Download and install ctrlwm:
## http://gtk-apps.org/content/show.php/ctrlwm?content=114565

file="$HOME/.bin/tile.mode"

case $(cat $file 2> /dev/null) in
    t)
        echo -n a > $file
        ctrlwm -t -a -mn 1 1
        ;;
    a)
        echo -n v > $file
        ctrlwm -v -mn 1 1
        ;;
    v|*)
        echo -n t > $file
        ctrlwm -t -mn 1 1
        ;;
esac
