#!/bin/bash
num_plays=$(xmllint --xpath 'string(/plays/@total)' ./plays_1.xml)
num_pages=$((num_plays/100+1))
p=2
# Get the remaining pages
while [ $p -le $num_pages ]
do
wget -O "plays_$p.xml" "https://www.boardgamegeek.com/xmlapi2/plays?username=psson73&mindate=2020-01-01&maxdate=2020-12-31&page=$p"
p=$((p+1))
done