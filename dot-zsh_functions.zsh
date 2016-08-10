[ -f ~/.zsh_functions_scraperwiki.zsh ] && source ~/.zsh_functions_scraperwiki.zsh

play() {
    # Skip DASH manifest for speed purposes. This might actually disable
    # being able to specify things like 'bestaudio' as the requested format,
    # but try anyway.
    # Get the best audio that isn't WebM, because afplay doesn't support it.
    # Use "$*" so that quoting the requested song isn't necessary.
    youtube-dl --default-search=ytsearch: \
               --youtube-skip-dash-manifest \
               --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
               --restrict-filenames \
               --format="bestaudio[ext!=webm]" \
               --exec=afplay "$*"
}

mp3() {
    # Get the best audio, convert it to MP3, and save it to the current
    # directory.
    youtube-dl --default-search=ytsearch: \
               --restrict-filenames \
               --format=bestaudio \
               --extract-audio \
               --audio-format=mp3 \
               --audio-quality=1 "$*"
}

echo_info() {
    echo -e "\033[34m$1\033[0m"
}

echo_success() {
    echo -e "\033[32m$1\033[0m"
}

echo_failure() {
    echo -e "\033[31m$1\033[0m"
}

dups() {
    f=/tmp/dup_checker.txt
    p=${1:-.}

    find $p \! -type d -exec shasum {} \; | sort -n | tee $f | cut -f 1 -d " " | uniq -d | grep -f /dev/stdin $f
}

rtfm() {
    help $@ || man $@ || $BROWSER "http://www.google.com/search?q=$@";
}

cmdfu() {
    curl "http://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext";
}

google() {
    w3m "http://www.google.com/search?q=$@"
}

encrypt() {
    openssl aes-256-cbc -a -salt -in "$1" -out "$1.aes" ; shred --remove "$1"
}

decrypt() {
    openssl aes-256-cbc -d -a -salt -in "$1.aes" -out "$1"
}

title() {
    echo -ne "\033]0;$*\007"
}

title-pwd() {
    title $(basename $PWD)
}

www() {
    if [ $1 ] ; then
        w3m $*
    else
        w3m google.com
    fi
}

colortable() {
    for c in {0..255} ; do
        echo -e "\033[38;05;${c}m $c: Test"
    done
}

2sv() {
    urlenctext="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$@")"
    transtext=`curl --silent "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$urlenctext&langpair=%7Csv" | grep -o "\{\"translatedText\":\"\(.*\)\"\}"`
    echo {${transtext#*:}
}

2en() {
    urlenctext="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$@")"
    transtext=`curl --silent "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$urlenctext&langpair=%7Cen" | grep -o "\{\"translatedText\":\"\(.*\)\"\}"`
    echo {${transtext#*:}
}

throbbler() {
    s="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
    while true ; do
        for (( i=0; i<${#s}; i++ )) ; do
            echo -n "${s:$i:1}"
            sleep 0.1
            tput cub1
        done
    done
}
