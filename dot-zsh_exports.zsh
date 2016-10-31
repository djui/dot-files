export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_COLLATE=C
export LC_CTYPE=en_US.UTF-8

export HEROKU_SKIP_ANALYTICS=1
export HOMEBREW_NO_ANALYTICS=1

export PYTHONIOENCODING=utf-8
export PYTHONDONTWRITEBYTECODE=1

export EDITOR=emacs
export TERM=xterm-256color

# Go
export GOPATH="$HOME/dev/go"

# Rust
export RUST_SRC_PATH="/usr/local/Cellar/rust/1.11.0/src"

unset PATH
export PATH="$HOME/.bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/Dropbox/CLI"
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export PATH="$PATH:/usr/local/opt/gnu-sed/libexec/gnubin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="💡 Alias tip: "
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_"
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1

# Man
# export MANPATH="/usr/local/man:$MANPATH"

# Grep
export GREP_OPTIONS='--exclude-dir=.git'

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
