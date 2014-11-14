#!/bin/bash
#  by Dralagen
#

if [ $# -eq 1 ]; then
	jdk=$1
else
echo "usage : . $0 /path/to/java/jdk1.7"
echo
echo "shortcup :"
echo "    . $0 1.7 alias of . $0 /opt/java/jdk1.7"
echo "    . $0 1.8 alias of . $0 /opt/java/jdk1.8"
	exit 1
fi

case "$jdk" in
	1.7)
		export JAVA_HOME=/opt/java/jdk1.7
		;;
	1.8)
		export JAVA_HOME=/opt/java/jdk1.8
		;;
	*)
		export JAVA_HOME="$jdk"
esac

echo "switch to jdk ${JAVA_HOME}"

. /etc/profile

