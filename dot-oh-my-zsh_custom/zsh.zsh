#HISTSIZE=1000
#SAVEHIST=1000
#HISTFILE=~/.zsh_history
#
#setopt hist_ignore_all_dups # ignore duplicate history entries
#setopt extendedhistory      # Add timestamp information to history
#setopt append_history       # Share history between sessions
##setopt share_history       # Share history between processes
#setopt inc_append_history   # ?
##setopt extended_glob       # Use extended globbing ("**") # Conflicts with e.g. "HEAD^"
#setopt prompt_subst         # Substitute the prompt with given commands
#setopt noauto_remove_slash  # ?
#setopt list_types           # ?
#setopt complete_in_word     # allow tab completion in the middle of a word
#setopt no_beep              # Don not beep
#setopt autocd               # "/etc" actually runs "cd /etc"
##setopt correct             # Correct spelling mistakes
#setopt auto_list            # Automatically list tab-completion hits
#setopt auto_menu            # Automatically use menyu completion after the second consecutive request for completion
##setopt always_to_end       # After tab completion always move to end
#setopt auto_pushd           # Always pushd when changing directory
#setopt pushd_to_home        # Have pushd with no arguments act like `pushd $HOME'
#
#autoload -Uz compinit && compinit
#autoload -U colors && colors
#autoload -Uz vcs_info
#
#zstyle ':completion:*' add-space true
#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
#zstyle ':completion:*' completions 1
#zstyle ':completion:*' condition false
#zstyle ':completion:*' format '%B%d%b'
#zstyle ':completion:*' glob 0
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' insert-unambiguous true
#zstyle ':completion:*' list-colors "$(dircolors -b 2> /dev/null || gdircolors -b)"
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' max-errors 1
#zstyle ':completion:*' menu select=10
#zstyle ':completion:*' menu select=2 eval "$(dircolors -b 2> /dev/null || gdircolors -b)"
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' special-dirs true
#zstyle ':completion:*' squeeze-slashes true
#zstyle ':completion:*' substitute 1
#zstyle ':completion:*' use-cache on
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#zstyle ':completion:*' word true
##zstyle ':completion:*' menu select=long
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*:descriptions' format '%B%d%b'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle :compinstall filename '/Users/uwe/.zshrc'
