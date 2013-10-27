#!/bin/sh

color_normal="\033[0m"
color_white="\033[;1m"
color_green="\033[32m"
color_yellow="\033[33m"
color_red="\033[31m"

_print() {
    echo "${color_white}[pre-commit hook]${color_normal} $1"
}

_info() {
    _print "$1"
}

_success() {
    _print "${color_green}$1${color_normal}"
}

_warn() {
    _print "${color_yellow}$1${color_normal}"
}

_error() {
    _print "${color_red}$1${color_normal}"
}


_checkCode() {
    errors=$(lein check 2>&1 > /dev/null)
    if [ ! $? = 0 ] ; then
        _error "Syntax check failed:"
        if [ true ] ; then
            error=$(head -n1 <<< "$errors")
            _error "$error"
        fi
        exit 1
    fi

    errors=$(lein test 2> /dev/null)
    if [ ! $? = 0 ] ; then
        _error "Tests failed:"
        if [ true ] ; then
            error=$(grep "^FAIL" <<< "$errors")
            _error "$error"
        fi
        exit 1
    fi

    _success "Code check passed."
}

_checkDocumentation() {
    # Check if metadata (:added, :deprecated, :io, :pure, ...) is accurate

    _success "Documentation check passed."
}

_info "Running..."
_checkCode
_checkDocumentation
_info "Finished."
