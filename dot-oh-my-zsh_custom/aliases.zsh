## OS specific

[ $(uname) = "Linux" ] && alias open='xdg-open'


## Git

unalias g
alias gb='git branch -v'
alias gc='git clone'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gcp='git commit && git push'
alias gci='git commit --interacive'
alias gg='git gui > /dev/null &'
alias gf='git fetch --all'
alias gl='git log --format="%h %ai %s (%an <%ae>)"'
alias gpf='git push --force'
alias gpt='git push --tags'
alias gr='git remote -v'
alias gri='git rebase --interactive'
alias gs='git status'

#alias gc='git commit -m'
#alias gca='git add . && git commit'
#alias gcai='git add . && git commit --interactive'
#alias gds='git diff --stat'
#alias gff='git stash && git pull --ff-only && git stash pop'
#alias gh='git lola'
#alias glp='git log --patch'
#alias gls='git log --stat'
#alias gss='git stash show'


## Misc

alias c='clear'
alias lt='tree -hDFC'


## Deprecated

#alias ...='cd ../..'
#alias ..='cd ..'
#alias 80='grep -nr "^.\{81\}"'
#alias adn='brio'
#alias apt-search='apt-cache search'
#alias b='emacs -nw ~/.bashrc ; source ~/.bashrc'
#alias beep='mpg123 -q $HOME/Dropbox/Music/glass.mp3 &'
#alias ccat='pygmentize -O style=monokai -f terminal256 -g'
#alias cd..='cd ..'
#alias clean='git clean -fdx'
#alias cpu='grep -c ^processor /proc/cpuinfo ; grep "^model name" /proc/cpuinfo | sort -u'
#alias d='git diff'
#alias diff='diff -u'
#alias dir='echo "It is time to let MS-DOS go and is Linux."'
#alias dirs='dirs -l -v -p'
#alias dl='download'
#alias e='emacs -nw' # '/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -c'
#alias ed='/Applications/Emacs.app/Contents/MacOS/Emacs --daemon'
#alias edit='$EDITOR'
#alias eg='erlgrep'
#alias egrep='egrep --color=AUTO'
#alias erl2='rlwrap -A -i -r -p RED -a -- erl'
#alias erlgrep='find . -type f \( -name "*.erl" -o -name "*.hrl" \) | xargs grep --color=auto'
#alias f='find'
#alias g='grep'
#alias h='history'
#alias hibernate='sudo pmset -a hibernatemode 25 && pmset sleepnow'
#alias history='cat $HISTFILE'
#alias hurl='jhurl'
#alias i='hostname -I'
#alias imac='ssh -Y 10.20.9.110'
#alias isodate='date -u +"%Y-%m-%dT%H:%M:%SZ"'
#alias joyent='ssh node@djui.no.de' # node@72.2.126.155
#alias la='ls -alhp'
#alias less='less -R -N -x2'
#alias lines='wc -l'
#alias ll='ls -lh'
#alias lsop='lsof -i'
#alias lt='tree -dCL 3'
#alias matrix='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
#alias md='mkdir'
#alias mem='grep -o ^MemTotal.* /proc/meminfo'
#alias mg='mg -n'
#alias notify='mpg123 -q /home/uwe/Dropbox/Music/glass.mp3 &'
#alias otpgrep='find $(which erl)/../../lib -type f \( -name "*.erl" -o -name "*.hrl" -o -name "*.c" -o -name "*.h" \) | xargs grep --color=auto'
#alias p='ps aux'
#alias pd='pushd'
#alias pg='ps aux | grep -i'
#alias sl='cut -c -$(tput cols)'
#alias standby='sudo pmset -a hibernatemode 0 && pmset sleepnow'
#alias t='tail'
#alias tips='e $HOME/Dropbox/_Life/_tips.md'
#alias tmux-pwn='tmux list-clients | sed "s|^\(/dev/ttys[0-9]\+\).*\[\([0-9]\+x[0-9]\+\).*$|\2 \1|" | sort -r -n | tail -n +2 | cut -d " " -f 2 | xargs -n 1 tmux detach-client -t'
#alias tree2='tree -CifF'
#alias tree='tree -C'
#alias vpn='[ $(nmcli con status | grep -c "Klarna") = 0 ] && nmcli con up id "Klarna"'
#alias whereis='find . -iname'
#alias z='emacs -nw ~/.zshrc ; source ~/.zshrc'
