#!/bin/bash

while getopts ":d:w" opt ; do
	case $opt in
		d) download_dir="$OPTARG"
		;;
		w) www_dir="$OPTARG"
		;;
		\?) echo "Invalid option -$OPTARG" >&2
		;;
	esac
done

download_dir='/home/pi/xml'
www_dir='/var/www/html'
cd $download_dir
file_name='combined_plays'
file_xml="$file_name.xml"
xml_grep --pretty_print indented --wrap plays --descr --cond "plays" plays_*.xml > "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/combined_plays.xsl\"?>/" "$file_xml"
sudo cp "$download_dir/$file_xml" "$www_dir"