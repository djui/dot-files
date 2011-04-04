#!/usr/bin/env bash
#set -x

DESTDIR="$HOME"
SRCDIR="$HOME/dot-files"
SRCITEMS=(
    profile
    bashrc
    zshrc
    bin
    ssh
    xmodmap
    xmodmap_laptop
    inetrc
    xinitrc
    screenrc
    tmux.conf
    emacs
    emacs.d
    vimrc
    vim
    gitconfig
    irssi
    mocp
    msmtprc
    mailrc
    config!awesome
    config!terminator
)

mkdir -p $HOME/.config

## First, get all git submodules like .config/awesome/vicious and .emacs.d/distel
git submodule update --init

for SRCITEM in ${SRCITEMS[*]} ; do 
    DESTITEM=$(echo $SRCITEM | tr '!' '/')
    echo "Trying to link $DESTDIR/.$SRCITEM ..."
    [ -L "$DESTDIR/.$DESTITEM" ] && continue
    [ -e "$DESTDIR/.$DESTITEM" ] && mv "$DESTDIR/.$DESTITEM" "$DESTDIR/.$DESTITEM.bak"
    ln -s "$SRCDIR/dot-$SRCITEM" "$DESTDIR/.$DESTITEM"
done

## Some emacs modules need compilation
cd $HOME/.emacs.d/distel && make
cd $HOME

## Initialize some scripts
source $HOME/.bashrc
