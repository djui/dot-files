## OS specific

[ $(uname) = "Darwin" ] && alias -r hibernate='sudo pmset -a hibernatemode 25 && pmset sleepnow'
[ $(uname) = "Darwin" ] && alias -r standby='sudo pmset -a hibernatemode 0 && pmset sleepnow'


## Docker

alias -r de='docker exec'
alias -r di='docker images'
alias -r dr='docker run'
alias -r drit='docker run -it'
alias -r dritrm='docker run -it --rm'
alias -r ds='docker ps'


## Java

alias -r java6='JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias -r java7='JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias -r java8='JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'


## Misc

alias -r \?='echo $?'
alias -r 80='grep -n "^.\{81\}"'
alias -r bu='brew update && for f in $(brew outdated) ; do brew upgrade $f ; done'
alias -r ccat='pygmentize -O style=monokai -f terminal256 -g'
alias -r cd..='cd ..'
alias -r isodate='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias -r lsop='lsof -i'
alias -r lt='tree -hDFC'
alias -r matrix='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias -r go-repl='gore'
alias -r gorepl='gore'
alias -r grepl='gore'
alias -r tiga='tig --all'
alias -r ux='chmod u+x'
alias -r w='watch -n 1 -d'


## Git

unalias -r g 2> /dev/null

alias -r gb='git branch -vv'
alias -r gbd="git for-each-ref --sort=-committerdate --format='%(color:green)%(HEAD)%(color:reset) %(refname:short)%09%(objectname:short)%09%(subject)' refs/heads | sed 's|refs/heads/||' | column -t -s $'\t'"
alias -r gci='git commit --interactive'
alias -r gcm='git commit -m' # alias for gcmsg alias
alias -r gcp='git commit && git push'
alias -r gds='git diff --stat'
alias -r gdss='_() { git diff $@ | diff-highlight | diff-ss } ; _'
alias -r gg='git gui &'
alias -r ggb='git gui blame'
alias -r ggc='git gui citool'
alias -r ghp='hub pull-request'
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


## Deprecated

#alias -r tmux-pwn='tmux list-clients | sed "s|^\(/dev/ttys[0-9]\+\).*\[\([0-9]\+x[0-9]\+\).*$|\2 \1|" | sort -r -n | tail -n +2 | cut -d " " -f 2 | xargs -n 1 tmux detach-client -t'