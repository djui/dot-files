#!/bin/bash

DEFAULT_CHROME_CONFIG_PATH="$HOME/Library/Application Support/Google/Chrome"
DEFAULT_CHROME_PROFILE="Default"

exporter=$(basename $0)/ccl_ssns
date=$(date +%Y%m%d%H%M%S)
in_path="$DEFAULT_CHROME_CONFIG_PATH/$DEFAULT_CHROME_PROFILE"
out_path="."

$exporter "$in_path/Last Session"    "$out_path/last_session_$date.html"
$exporter "$in_path/Last Tabs"       "$out_path/last_tabs_$date.html"
$exporter "$in_path/Current Session" "$out_path/current_session_$date.html"
$exporter "$in_path/Current Tabs"    "$out_path/$outpath/current_tabs_$date.html"
