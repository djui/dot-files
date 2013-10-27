#!/bin/sh

color_normal="\033[0m"
color_white="\033[;1m"
color_green="\033[32m"
color_yellow="\033[33m"
color_red="\033[31m"

_print() {
    echo "${color_white}[pre-push hook]${color_normal} $1"
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
    _warn "Do all functions have tests?"
}

_checkDocumentation() {
    # Check if version information is updated in project.clj (and git tag)
    _warn "Should the version be bumped?"
}

_info "Running..."
_checkCode
_checkDocumentation
_info "Finished."
