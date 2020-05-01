#!bin/bash
cd /home/pi/xml
$contents=$(wget "https://www.boardgamegeek.com/xmlapi2/collection?username=psson73&own=1&type=thing&subtype=boardgame" -O collection.xml)
