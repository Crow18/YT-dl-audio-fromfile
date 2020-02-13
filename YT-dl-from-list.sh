#!/bin/bash

cmd='youtube-dl -a list.txt --default-search ytsearch -x -o "./Downloaded_files/%(title)s.%(ext)s"'

echo Which format would you like to download into?
echo "1:\topus"
echo "2:\tmp3"
echo "3:\texit/cancel"

Download()
{
	read response
	if [ $response -eq 1 ]
	then
		eval "$cmd"
	elif [ $response -eq 2 ]
	then
		eval "$cmd --audio-format mp3"
	elif [ $response -eq 3 ]
	then
		return 1
	else
		echo "Response out of bounds!"
		unset response
		Download
	fi
}

Download
