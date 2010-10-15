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
)

mkdir -p $HOME/.config

## First, get all git submodules like .config/awesome/vicious and .emacs.d/distel
git submodule update --init

## Some emacs modules need compilation
cd $HOME/.emacs.d/distel && make
cd $HOME/.emacs.d/magit && make
cd $HOME

for SRCITEM in ${SRCITEMS[*]} ; do 
    DESTITEM=$(echo $SRCITEM | tr '!' '/')
    echo "Trying to link $DESTDIR/.$SRCITEM ..."
    [ -L "$DESTDIR/.$DESTITEM" ] && continue
    [ -e "$DESTDIR/.$DESTITEM" ] && mv "$DESTDIR/.$DESTITEM" "$DESTDIR/.$DESTITEM.bak"
    ln -s "$SRCDIR/dot-$SRCITEM" "$DESTDIR/.$DESTITEM"
done

## Create some symlinks
[ $(hostname) == "simpknot" ] && \
sudo ln -s ~/.bin/p4v/bin/p4merge /usr/local/bin/p4merge
