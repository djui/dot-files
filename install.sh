#!/bin/bash

DESTDIR="$HOME"
SRCDIR="$HOME/dev/dot-files"
SRCITEMS=(
    bin
    emacs
    emacs.d
    git_template
    gitconfig
    gitignore_global
    gnupg
    lein
    login_conf
    necdrc
    oh-my-zsh
    oh-my-zsh_custom
    ssh
    tigrc
    tmux.conf
    vim
    vimrc
    w3m
    zshrc
    zsh-aliases.zsh
    zsh_exports.zsh
    zsh_functions.zsh
    zsh_keybindings.zsh
    zsh_options.zsh
    zsh_themes_djui.zsh
)

for SRCITEM in ${SRCITEMS[*]} ; do
    DESTITEM=$(echo $SRCITEM | tr '!' '/') # Take care of subdirectories
    echo -n "Trying to link $DESTDIR/.${SRCITEM}... "
    if [ -L "$DESTDIR/.$DESTITEM" ] ; then
        echo " already linked."
        continue
    elif [ -e "$DESTDIR/.$DESTITEM" ] ; then
        echo -n "conflict... "
        mv "$DESTDIR/.$DESTITEM" "$DESTDIR/.$DESTITEM.bak"
        echo -n "backed up. "
    fi
    echo -n "linking... "
    ln -s "$SRCDIR/dot-$SRCITEM" "$DESTDIR/.$DESTITEM"
    echo "done."
done
