# Options (set -o) http://zsh.sourceforge.net/Doc/Release/Options.html

## Changing Directories
setopt AUTO_CD
setopt AUTO_PUSHD
# Often to annoying when switching between symlinked and non-symlinked in the same directories.
#setopt CHASE_DOTS
#setopt CHASE_LINKS
setopt CDABLE_VARS
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

## Completion
setopt AUTO_LIST
setopt AUTO_MENU
setopt AUTO_NAME_DIRS
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH
setopt BASH_AUTO_LIST
setopt COMPLETE_ALIASES
setopt COMPLETE_IN_WORD
setopt GLOB_COMPLETE
setopt HASH_LIST_ALL
setopt LIST_AMBIGUOUS
setopt LIST_BEEP
setopt LIST_PACKED
setopt LIST_ROWS_FIRST
setopt LIST_TYPES
setopt MENU_COMPLETE
setopt REC_EXACT

## Expansion and Globbing
setopt EXTENDED_GLOB

## History
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
HIST_STAMPS="yyyy-mm-dd"

## Input/Output
setopt CORRECT
