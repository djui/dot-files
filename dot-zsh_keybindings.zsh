bindkey -e                   # Emacs key bindings
bindkey ' ' magic-space      # Do history expansion also on space

bindkey "^[b" backward-char  # Swap ctrl/alt behaviour by default
bindkey  "^b" backward-word
bindkey "^[f" forward-char
bindkey  "^f" forward-word
bindkey "^[d" delete-char
bindkey  "^d" delete-word

run-in-background() {
    #LBUFFER="nohup -- $LBUFFER 2> /dev/null &!";
    LBUFFER="nohup -- $LBUFFER 2> /dev/null &";
}
zle -N run-in-background
bindkey "^[B" run-in-background

insert-last-typed-word() {
    LBUFFER="$LBUFFER "
    zle copy-prev-shell-word
}

zle -N insert-last-typed-word
bindkey "^[>" insert-last-typed-word
#bindkey "^[>" copy-prev-shell-word
