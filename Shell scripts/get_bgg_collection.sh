#!/bin/bash
upload_dir='/home/pi/xml'
www_dir='/var/www/html'
cd $upload_dir
wget "https://www.boardgamegeek.com/xmlapi2/collection?username=psson73&own=1&type=thing&subtype=boardgame" -O collection.xml
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection.xsl\"?>/" collection.xml
sudo cp /home/pi/xml/collection.xml /var/www/html

file_name='collection_owned_incl_exp'
file_xml="$file_name.xml"
wget "https://www.boardgamegeek.com/xmlapi2/collection?username=psson73&own=1&type=thing&subtype=boardgame" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_owned_incl_exp.xsl\"?>/" "$file_xml"
sudo cp "$upload_dir/$file_xml" "$www_dir"

file_name='collection_all_no_exp'
file_xml="$file_name.xml"
wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&subtype=boardgame&excludesubtype=boardgameexpansion&wishlist=0" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_all_no_exp.xsl\"?>/" "$file_xml"
sudo cp "$upload_dir/$file_xml" "$www_dir"

file_name='collection_no_expansions'
file_xml="$file_name.xml"
wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&own=1&subtype=boardgame&excludesubtype=boardgameexpansion&wishlist=0" -O "$file_xml"
#sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_no_expansions.xsl\"?>/" "$file_xml"
sudo cp "$upload_dir/$file_xml" "$www_dir"

file_name='collection_wishlist'
file_xml="$file_name.xml"
wget "https://boardgamegeek.com/xmlapi2/collection?username=psson73&type=thing&own=0&wishlist=1" -O "$file_xml"
sed -i "s/?>/?><?xml-stylesheet type=\"text\/xsl\" href=\"conf\/collection_wishlist.xsl\"?>/" "$file_xml"
sudo cp "$upload_dir/$file_xml" "$www_dir"
