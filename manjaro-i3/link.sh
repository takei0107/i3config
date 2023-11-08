#!/bin/bash

set -e
set -u

i3configdir="$HOME"/.i3
otherdir="$HOME"/.local/share

[[ ! -d "$i3configdir" ]] && mkdir "$i3configdir"
[[ ! -d "$otherdir" ]] && mkdir -p "$otherdir"

shareddir="$PWD"/share

i3configfile="$i3configdir"/config
if [[ -f $i3configfile ]]; then
	if [[ -L $i3configfile ]]; then
		unlink "$i3configfile"
	else
		mv "$i3configfile" "$i3configfile"_bk.$(date '+%Y%m%d%H%M')
	fi
fi
ln -siv "$PWD"/config "$i3configfile"

for dir in $(ls "$shareddir"); do
	ln -siv "$shareddir"/"$dir" "$otherdir"
done
