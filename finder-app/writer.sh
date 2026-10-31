#!/bin/sh

if [ $# -lt 2 ]; then
	exit 1
fi

if [ $2 -eq "" ]; then
	exit 1
fi

mkdir -p "$(dirname -- "$1")" || {
	exit 1
}

echo "$2" > "$1"
