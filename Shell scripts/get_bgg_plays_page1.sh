#!/bin/bash

while getopts ":d" opt ; do
	case $opt in
		d) download_dir="$OPTARG"
		;;
		\?) echo "Invalid option -$OPTARG" >&2
		;;
	esac
done

cd $download_dir
wget "https://www.boardgamegeek.com/xmlapi2/plays?username=psson73&mindate=2020-01-01&maxdate=2020-12-31&page=1" -O plays_1.xml