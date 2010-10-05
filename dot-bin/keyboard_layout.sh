#!/usr/bin/env bash

file="$HOME/.bin/keyboard_layout.mode"

case $(cat $file 2> /dev/null) in
    de)   new=se ;;
    se)   new=us ;;
    us|*) new=de ;;
esac

echo -n $new > $file
setxkbmap -layout $new
xmodmap $HOME/.xmodmap
