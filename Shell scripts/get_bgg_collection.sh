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

file_name='collection'
file_xml="$file_name.xml"
wget "https://www.boardgamegeek.com/xmlapi2/collection?username=psson73&own=1&type=thing&subtype=boardgame" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection.xsl\"?>/" collection.xml
sudo cp "$download_dir/$file_xml" "$www_dir"

file_name='collection_owned_incl_exp'
file_xml="$file_name.xml"
wget "https://www.boardgamegeek.com/xmlapi2/collection?username=psson73&own=1&type=thing&subtype=boardgame" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_owned_incl_exp.xsl\"?>/" "$file_xml"
sudo cp "$download_dir/$file_xml" "$www_dir"

file_name='collection_all_no_exp'
file_xml="$file_name.xml"
wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&subtype=boardgame&excludesubtype=boardgameexpansion&wishlist=0" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_all_no_exp.xsl\"?>/" "$file_xml"
sudo cp "$download_dir/$file_xml" "$www_dir"

#Not used currently, problem with xsl config file
#file_name='collection_no_expansions'
#file_xml="$file_name.xml"
#wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&own=1&subtype=boardgame&excludesubtype=boardgameexpansion&wishlist=0" -O "$file_xml"
#sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_no_expansions.xsl\"?>/" "$file_xml"
#sudo cp "$download_dir/$file_xml" "$www_dir"

file_name='collection_wishlist'
file_xml="$file_name.xml"
wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&own=0&wishlist=1" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_wishlist.xsl\"?>/" "$file_xml"
sudo cp "$download_dir/$file_xml" "$www_dir"
