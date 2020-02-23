#!/bin/bash

while getopts ":d:" opt ; do
	case $opt in
		d)
			download_dir="$OPTARG"
		;;
		\?)
			echo "Invalid option -$OPTARG" >&2
		;;
	esac
done

cd $download_dir

file_name='plays_1'
file_xml="$file_name.xml"
wget "https://www.boardgamegeek.com/xmlapi2/plays?username=psson73&mindate=2020-01-01&maxdate=2020-12-31&page=1" -O "$download_dir/$file_xml"