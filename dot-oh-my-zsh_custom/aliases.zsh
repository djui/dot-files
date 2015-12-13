## OS specific

[ $(uname) = "Linux" ] && alias open='xdg-open'


## Git

unalias -r g 2> /dev/null
alias -r gb='git branch -v'
alias -r gbd="git for-each-ref --sort=-committerdate --format='%(color:green)%(HEAD)%(color:reset) %(refname:short)%09%(objectname:short)%09%(subject)' refs/heads | sed 's|refs/heads/||' | column -t -s $'\t'"
alias -r gc='git clone'
alias -r gca='git commit -a --amend'
alias -r gcam='git commit -a -m'
alias -r gcb='git checkout -b'
alias -r gcm='git commit -m'
alias -r gcp='git commit && git push'
alias -r gci='git commit --interacive'
alias -r gf='git fetch --all'
alias -r gg='git gui > /dev/null &'
alias -r ghp='hub pull-request'
alias -r gl='git log --format="%h %ai %s (%an <%ae>)"'
alias -r gn='git number'
alias -r gpf='git push --force'
alias -r gpt='git push --tags'
alias -r gpr='git push && hub pull-request'
alias -r gr='git remote -v'
alias -r gra='git rebase --abort'
alias -r grc='git rebase --continue'
alias -r gri='git rebase --interactive'
alias -r grh='git reset --hard'
alias -r grhh='git reset --hard HEAD'
alias -r grhm='git reset --hard origin/master'
#alias -r gs='git status'
alias -r gs='git number'
alias -r gu='git pull --ff-only'
#alias -r gc='git commit -m'
#alias -r gca='git add . && git commit'
#alias -r gcai='git add . && git commit --interactive'
#alias -r gds='git diff --stat'
#alias -r gff='git stash && git pull --ff-only && git stash pop'
#alias -r gh='git lola'
#alias -r glp='git log --patch'
#alias -r gls='git log --stat'
#alias -r gss='git stash show'


### >>>>>>>>>>>>>>>>> CLEAN UP LATER
# glog    = log --graph --abbrev-commit --pretty=oneline
# lol     = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
# lola    = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all
# # Called from the top-level dir. Pull from git://HOST/.
# serv    = daemon --reuseaddr --verbose  --base-path=. --export-all ./.git
# st      = status --ignore-submodules
# ci      = commit
# br      = branch
# co      = checkout
# df      = diff --ignore-submodules
# lg      = log -p
# # all new commits after you fetched, with stats, but excluding merges
# lc      = log ORIG_HEAD.. --stat --no-merges
# lin     = log HEAD..origin/master
# lout    = log origin/master..HEAD
# din     = diff HEAD..origin/master
# dout    = diff origin/master..HEAD
# in      = !git fetch && git log HEAD..origin/master
# pullsh  = !git pull && git push
# # Recall that the commit which will be committed after we resolve this conflict
# # will have two parents instead of the usual one: one parent will be HEAD, the
# # tip of the current branch; the other will be the tip of the other branch,
# # which is stored temporarily in MERGE_HEAD.
# gitkconflict = !gitk --left-right HEAD...MERGE_HEAD
# # "pull" or "merge" always leaves the original tip of the current branch in ORIG_HEAD.
# # Hence, to see what a merge brought in, use the mdiff alias:
# mdiff   = !gitk --left-right HEAD...ORIG_HEAD
# # Remove a file from the index: git unstage <file>
# unstage = reset HEAD --
# last    = log -1 HEAD
# whois   = "!sh -c 'git log -i -1 --pretty=\"format:%an <%ae>\n\" --author=\"$1\"' -"
# who     = "!git shortlog -s -- | sort -n -k1"
# aliases = "!git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /'"
# swap    = checkout "@{-1}"
# ff = "pull --ff-only"
# #unmerged = "!git diff --name-status --diff-filter=U | cut -f 2"
# unmerged = "!git ls-files -u | cut -f 2 | sort -u"
# conflicts = "!git ls-files -u | cut -f 2 | sort -u" # alias for unmerged
# untracked = "!git ls-files --other --exclude-standard"
### <<<<<<<<<<<<<<<<< CLEAN UP LATER


## Docker

alias -r dm='docker-machine'
alias -r dms='docker-machine start dev'
alias -r dme='docker-machine env dev'

## Java

alias -r java6='JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias -r java7='JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias -r java8='JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'


## Misc

alias -r bu='for f in $(brew outdated) ; do brew upgrade $f ; done'
alias -r c='clear'
alias -r cd..='cd ..'
alias -r e='emacs'
alias -r hgrep='history | grep'
alias -r ll='ls -lh --color' # --full-time'
alias -r lt='tree -hDFC'
alias -r reset="clear && printf '\e[3J'"
alias -r ux='chmod u+x'
alias -r tiga='tig --all'
alias -r w='watch -n 1 -d'

## Deprecated

#alias -r ...='cd ../..'
#alias -r ..='cd ..'
#alias -r 80='grep -nr "^.\{81\}"'
#alias -r adn='brio'
#alias -r apt-search='apt-cache search'
#alias -r b='emacs -nw ~/.bashrc ; source ~/.bashrc'
#alias -r beep='mpg123 -q $HOME/Dropbox/Music/glass.mp3 &'
#alias -r ccat='pygmentize -O style=monokai -f terminal256 -g'
#alias -r clean='git clean -fdx'
#alias -r cpu='grep -c ^processor /proc/cpuinfo ; grep "^model name" /proc/cpuinfo | sort -u'
#alias -r d='git diff'
#alias -r diff='diff -u'
#alias -r dir='echo "It is time to let MS-DOS go and is Linux."'
#alias -r dirs='dirs -l -v -p'
#alias -r dl='download'
#alias -r e='emacs -nw' # '/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -c'
#alias -r ed='/Applications/Emacs.app/Contents/MacOS/Emacs --daemon'
#alias -r edit='$EDITOR'
#alias -r eg='erlgrep'
#alias -r egrep='egrep --color=AUTO'
#alias -r erl2='rlwrap -A -i -r -p RED -a -- erl'
#alias -r erlgrep='find . -type f \( -name "*.erl" -o -name "*.hrl" \) | xargs grep --color=auto'
#alias -r f='find'
#alias -r g='grep'
#alias -r h='history'
#alias -r hibernate='sudo pmset -a hibernatemode 25 && pmset sleepnow'
#alias -r history='cat $HISTFILE'
#alias -r hurl='jhurl'
#alias -r i='hostname -I'
#alias -r imac='ssh -Y 10.20.9.110'
#alias -r isodate='date -u +"%Y-%m-%dT%H:%M:%SZ"'
#alias -r joyent='ssh node@djui.no.de' # node@72.2.126.155
#alias -r la='ls -alhp'
#alias -r less='less -R -N -x2'
#alias -r lines='wc -l'
#alias -r ll='ls -lh'
#alias -r lsop='lsof -i'
#alias -r lt='tree -dCL 3'
#alias -r matrix='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
#alias -r md='mkdir'
#alias -r mem='grep -o ^MemTotal.* /proc/meminfo'
#alias -r mg='mg -n'
#alias -r notify='mpg123 -q /home/uwe/Dropbox/Music/glass.mp3 &'
#alias -r otpgrep='find $(which erl)/../../lib -type f \( -name "*.erl" -o -name "*.hrl" -o -name "*.c" -o -name "*.h" \) | xargs grep --color=auto'
#alias -r p='ps aux'
#alias -r pd='pushd'
#alias -r pg='ps aux | grep -i'
#alias -r sl='cut -c -$(tput cols)'
#alias -r standby='sudo pmset -a hibernatemode 0 && pmset sleepnow'
#alias -r t='tail'
#alias -r tips='e $HOME/Dropbox/_Life/_tips.md'
#alias -r tmux-pwn='tmux list-clients | sed "s|^\(/dev/ttys[0-9]\+\).*\[\([0-9]\+x[0-9]\+\).*$|\2 \1|" | sort -r -n | tail -n +2 | cut -d " " -f 2 | xargs -n 1 tmux detach-client -t'
#alias -r tree2='tree -CifF'
#alias -r tree='tree -C'
#alias -r vpn='[ $(nmcli con status | grep -c "Klarna") = 0 ] && nmcli con up id "Klarna"'
#alias -r whereis='find . -iname'
#alias -r z='emacs -nw ~/.zshrc ; source ~/.zshrc'
