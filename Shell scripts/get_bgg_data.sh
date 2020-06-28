#!/bin/bash

get_bgg_collection.sh -d /home/pi/xml -w /var/www/html/
get_bgg_plays_page1.sh -d /home/pi/xml
get_bgg_plays.sh -d /home/pi/xml
combine_plays.sh -d /home/pi/xml -w /var/www/html/
get_bgg_collection.sh -d /home/pi/xml -w /var/www/html/
