#!/bin/bash
upload_dir='/home/pi/xml'
www_dir='/var/www/html'
cd $upload_dir
file_name='combined_plays'
file_xml="$file_name.xml"
xml_grep --pretty_print indented --wrap plays --descr --cond "plays" plays_*.xml > "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/combined_plays.xsl\"?>/" "$file_xml"
sudo cp "$upload_dir/$file_xml" "$www_dir"