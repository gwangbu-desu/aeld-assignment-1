#!/bin/sh

if [ $# -lt 2 ]; then
	echo "Error: missing arguments."
	exit 1
fi



filesdir=$1
searchstr=$2


if [ ! -d "$filesdir" ]; then
	echo "Error: '$filesdir' is not a directory"
	exit 1;
fi

x=$(find "$filesdir" -type f | wc -l)
y=$(grep -rF -- "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $x and the number of matching lines are $y"
exit 0
