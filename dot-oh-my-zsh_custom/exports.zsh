# Man
# export MANPATH="/usr/local/man:$MANPATH"

# Grep
export GREP_OPTIONS='--exclude-dir=.git'

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Go
export GOPATH="$HOME/dev/go"

# Localization
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacs -nw'
else
    export EDITOR='emacs -nw'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
