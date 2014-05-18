#!/bin/bash

if [ $# -eq 1 ]; then
	dir=$1
else
	echo "No directory : $0 /my/directory";
	exit 1;
fi

cd "$dir"


search="$dir/.@__thumb"
if [ -e "$search" ]; then
	echo "$search;"
	rm -R "$search"
fi

search="$dir/@Transcode"
if [ -e "$search" ]; then
	echo "$search;"
	rm -R "$search"
fi

search="$dir/thumb.db"
if [ -e "$search" ]; then
	echo "$search;"
	rm "$search"
fi

old_IFS=$IFS
IFS=$'\n'
for i in `ls -d */ 2>/dev/null`;do
	 $0 "$dir$i"
done
IFS=$old_IFS


exit 0

