#!/bin/sh
command -v xclip >/dev/null 2>&1 || { echo >&2 "xclip not installed"; exit 1; }
command -v file >/dev/null 2>&1 || { echo >&2 "file not installed"; exit 1; }
if [ -z "$1" ]
then
	echo "Missing file path to copy"
	exit 1
fi
mime=$(file -b --mime-type $1)
xclip -selection clipboard -t $mime -i $1
