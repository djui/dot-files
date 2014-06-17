bindkey -e                   # Emacs key bindings
bindkey ' ' magic-space      # Do history expansion also on space

bindkey "^[b" backward-char  # Swap ctrl/alt behaviour by default
bindkey  "^b" backward-word
bindkey "^[f" forward-char
bindkey  "^f" forward-word
bindkey "^[d" delete-char
bindkey  "^d" delete-word
