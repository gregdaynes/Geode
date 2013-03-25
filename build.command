#!/bin/bash

directory="$( dirname "${BASH_SOURCE[0]}" )";

cd $directory;

#Sitemap
#########

echo "Creating sitemap...";

#get url from _variables file
s=$(grep "url " ./code/_variables.html)
s=${s#*http://}
s=${s% -->}

#find html files
find ./code/build -type f -name '*.html' | tee ./resources/tmp/sitemap.txt;

#replace leading . with http:// and url from _variables
sed 's/^\./http:\/\/'$s'/w ./code/build/sitemap.txt' ./resources/tmp/sitemap.txt;

#ANT BUILD
##########
cd ./resources/build-script/;

echo "Building...";
ant build;
