function gcp() {
    git commit -m $1 && git push
}

function gacp() {
    git commit -a -m $1 && git push
}

function locate2() {
    case $(uname) in
        "Darwin") mdfind -name $* | grep "^$(pwd)" ;;
        "Linux" ) find / -mount -wholename "/proc" -prune -o -iname $* | grep "^$(pwd)" ;;
    esac
}

function klocate() {
    case $(uname) in
        "Darwin") mdfind -name $* | grep "/kred/" ;;
        "Linux" ) find / -mount -wholename "/proc" -prune -o -iname $* | grep "/kred/" ;;
    esac
}

function echo_info() {
    echo -e "\033[34m$1\033[0m"
}

function echo_success() {
    echo -e "\033[32m$1\033[0m"
}

function echo_failure() {
    echo -e "\033[31m$1\033[0m"
}

function dups() {
    f=/tmp/dup_checker.txt
    p=${1:-.}

    find $p \! -type d -exec shasum {} \; | sort -n | tee $f | cut -f 1 -d " " | uniq -d | grep -f /dev/stdin $f
}

function rtfm() {
    help $@ || man $@ || $BROWSER "http://www.google.com/search?q=$@";
}

function cmdfu() {
    curl "http://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext";
}

function google() {
    w3m "http://www.google.com/search?q=$@"
}

function encrypt() {
    openssl aes-256-cbc -a -salt -in "$1" -out "$1.aes" ; shred --remove "$1"
}

function decrypt() {
    openssl aes-256-cbc -d -a -salt -in "$1.aes" -out "$1"
}

function title() {
    echo -ne "\033]0;$*\007"
}

function title-pwd() {
    title $(basename $PWD)
}

function www() {
    if [ $1 ] ; then
        w3m $*
    else
        w3m google.com
    fi
}

function colortable() {
    for c in {0..255} ; do
        echo -e "\033[38;05;${c}m $c: Test"
    done
}

function 2sv() {
    urlenctext="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$@")"
    transtext=`curl --silent "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$urlenctext&langpair=%7Csv" | grep -o "\{\"translatedText\":\"\(.*\)\"\}"`
    echo {${transtext#*:}
}

function 2en() {
    urlenctext="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$@")"
    transtext=`curl --silent "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$urlenctext&langpair=%7Cen" | grep -o "\{\"translatedText\":\"\(.*\)\"\}"`
    echo {${transtext#*:}
}

function throbbler() {
    s="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
    while true ; do
        for (( i=0; i<${#s}; i++ )) ; do
            echo -n "${s:$i:1}"
            sleep 0.1
            tput cub1
        done
    done
}
