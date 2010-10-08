#!/usr/bin/env bash
#set -x

DESTDIR="$HOME"
SRCDIR="$HOME/dot-files"
SRCITEMS=(
    bashrc
    bin
    ssh
    xmodmap
    xinitrc
    screenrc
    emacs
    emacs.d
    gitconfig
    irssi
    mocp
    config!awesome
    config!terminator
#   devilspie
#   gconf
)

## First, get all git submodules like .config/awesome/vicious and .emacs.d/distel
git submodule update --init

for SRCITEM in ${SRCITEMS[*]} ; do 
    DESTITEM=$(echo $SRCITEM | tr '!' '/')
    echo "Trying to link $DESTDIR/.$SRCITEM ..."
    [ -L "$DESTDIR/.$DESTITEM" ] && continue
    [ -e "$DESTDIR/.$DESTITEM" ] && mv "$DESTDIR/.$DESTITEM" "$DESTDIR/.$DESTITEM.bak"
    ln -s "$SRCDIR/dot-$SRCITEM" "$DESTDIR/.$DESTITEM"
done
