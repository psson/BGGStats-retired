#!/bin/bash

while getopts ":d:w:" opt ; do
	case $opt in
		d) download_dir="$OPTARG"
		;;
		w) www_dir="$OPTARG"
		;;
		\?) echo "Invalid option -$OPTARG" >&2
		;;
	esac
done

cd $download_dir

file_name='combined_plays'
file_name2='my2020_10x10'
file_xml="$file_name.xml"
file2_xml="$file_name2.xml"
xml_grep --pretty_print indented --wrap plays --descr --cond "plays" plays_*.xml > "$file_xml"
#cp "$file_xml" "file_xml"
cp "$file_xml" $www_dir
xml_grep --pretty_print indented --wrap plays --descr --cond "plays" plays_*.xml > "$file2_xml"
#cp "$file2_xml" "file2_xml"
cp "$file2_xml" $www_dir
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/combined_plays.xsl\"?>/" "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/my2020_10x10.xsl\"?>/" "$file2_xml"
sudo mv "$download_dir/$file_xml" "$www_dir"
sudo mv "$download_dir/$file2_xml" "$www_dir"
rm plays_*.xml