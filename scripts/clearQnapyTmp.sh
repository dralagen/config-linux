#!/bin/bash

if [ $# -eq 1 ]; then
	dir=$1
else
	echo "No directory : $0 /my/directory";
	exit 1;
fi

cd "$dir"

target=".@__thumb .@__qini @Recycle @Transcode thumb.db desktop.ini .Trash-*"


for t in $target; do
  search="$dir/$t"
  if [ -e "$search" ]; then
    echo "$search"
    rm -R "$search"
  fi
done

old_IFS=$IFS
IFS=$'\n'
for i in `ls -d */ 2>/dev/null`;do
	 $0 "$dir$i"
done
IFS=$old_IFS


exit 0

