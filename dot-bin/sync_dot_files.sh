#!/usr/bin/env bash

### @author Uwe Dauernheim <uwe@dauernheim.net>
### @doc Create symlinks for "dot-files". Currently files, 
### directories and files within directories are supported.

dotdir=$HOME/Dropbox/dotfiles
dotfiles=(
    .bin
    .config/terminator/config
    .devilspie
    .emacs.d
    .gconf/apps/metacity

    .bashrc
    .emacs
    .gitconfig
    .screenrc
    .xmodmap
)

## Initialize folders and git repository if needed
if [ ! -d $HOME/.git ] ; then
    git init $dotdir > /dev/null
    echo ".emacs.d/auto-save-list" > $dotdir/.gitignore
    echo ".emacs.d/backups" >> $dotdir/.gitignore
fi

## Organize files (replace items with symlinks)
for dotfile in ${dotfiles[@]} ; do
    if [ -e $HOME/$dotfile ] ; then    
        if [ ! -h $HOME/$dotfile ] ; then
            ## Create subdirectories if needed
            $(echo $dotfile | grep "/.\+$" > /dev/null)
            [ $? = 0 ] && mkdir -p $dotdir/$dotfile
            ## Move dot-file and create symlink
            mv -i $HOME/$dotfile $dotdir/$dotfile && \
                ln -s $dotdir/$dotfile $HOME/$dotfile
        fi
    elif [ -h $HOME/$dotfile ] ; then
        ## Repair the symlink
        rm -i $HOME/$dotfile && \
        ln -s $dotdir/$dotfile $HOME/$dotfile
    fi
done
