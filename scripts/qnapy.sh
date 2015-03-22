#!/bin/bash

basedir="/home/dralagen/qnapy"

if [ $# -gt 0 ]; then
	mnt="$1"
else
	mnt="Multimedia home Private Download photo_famille"
fi

if [ ! -d $basedir ] ; then
	mkdir $basedir
fi

password="`zenity --password --title="Qnapy's Password"`" || \
    read -s -p "Qnapy's Password : " password && echo ""

for dir in $mnt; do
	if [ ! -d $basedir/$dir ] ; then
		echo "create dir $dir"
		mkdir $basedir/$dir
	fi

	sudo mount.cifs //qnapy/$dir $basedir/$dir -o username="dralagen",password="${password}",uid=1000,gid=100,rw,iocharset=utf8 && echo "mount $basedir/$dir"

done

