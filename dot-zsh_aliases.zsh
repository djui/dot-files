## OS specific

[ $(uname) = "Darwin" ] && alias -r hibernate='sudo pmset -a hibernatemode 25 && pmset sleepnow'
[ $(uname) = "Darwin" ] && alias -r standby='sudo pmset -a hibernatemode 0 && pmset sleepnow'


## Go

alias -r gorun='gorram'


## Docker

alias -r de='docker exec'
alias -r di='docker images'
alias -r dr='docker run'
alias -r drit='docker run -it'
alias -r dritrm='docker run -it --rm'
alias -r ds='docker ps'
alias -r dv='docker volume'
alias -r dvl='docker volume ls'
alias -r dvr='docker volume rm'


## Java

alias -r java6='JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias -r java7='JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias -r java8='JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'


## Misc

alias -r \?='echo $?'
alias -r 80='grep -n "^.\{81\}"'
alias -r bu='brew update'
alias -r bo='brew outdated'
alias -r bp='brew upgrade'
alias -r ccat='pygmentize -O style=monokai -f terminal256 -g'
alias -r cd..='cd ..'
alias -r isodate='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias -r lower="tr '[:upper:]' '[:lower:]'"
alias -r lsop='lsof -i'
alias -r ls='ls --color'
alias -r lt='tree -hDFC'
alias -r matrix='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias -r go-repl='gore'
alias -r gorepl='gore'
alias -r grepl='gore'
alias -r pw='cat /dev/urandom | tr -dc A-Za-z0-9 | head -c 50'
alias -r tiga='tig --all'
alias -r uuid='uuidgen | lower'
alias -r ux='chmod u+x'
alias -r w='watch -n 1 -d'


## Git

unalias -r g 2> /dev/null

alias -r gb='git branch -vv'
alias -r gbd="git for-each-ref --sort=-committerdate --format='%(color:green)%(HEAD)%(color:reset) %(refname:short)%09%(objectname:short)%(color:blue) [%(upstream:short)%(upstream:trackshort)] %(color:reset)%(subject)' refs/heads | sed 's/ \[\] / /' | column -t -s $'\t'"
alias -r gci='git commit --interactive'
alias -r gcm='git commit -m' # alias for gcmsg alias
alias -r gcp='git commit && git push'
alias -r gds='git diff --stat'
alias -r gdss='_() { git diff $@ | diff-highlight | diff-ss } ; _'
alias -r gg='git gui &'
alias -r ggb='git gui blame'
alias -r ggc='git gui citool'
alias -r ghp='hub pull-request -a djui'
alias -r glf='git pull --ff-only'
alias -r gma='git merge --abort'
alias -r gn='git number'
alias -r gpf='git push --force'
alias -r gpr='git push && hub pull-request'
alias -r gpt='git push --tags'
alias -r grho='git reset --hard $(git rev-parse --abbrev-ref --symbolic-full-name @{u})'
alias -r gro='git reset $(git rev-parse --abbrev-ref --symbolic-full-name @{u})'
alias -r gs='git number -s'
alias -r gserv='git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git'
alias -r gsmu='git submodule update --init --recursive'

alias -r tf='terraform'


## Deprecated

#alias -r tmux-pwn='tmux list-clients | sed "s|^\(/dev/ttys[0-9]\+\).*\[\([0-9]\+x[0-9]\+\).*$|\2 \1|" | sort -r -n | tail -n +2 | cut -d " " -f 2 | xargs -n 1 tmux detach-client -t'
