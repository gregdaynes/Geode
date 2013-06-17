#!/bin/bash

if [ "$1" == "-h" ] ; then 
  printf "usage: %s [<folder>] [<domain>] \n" "${0##*/}";
  exit 0
fi

# File folder NOTE: Absolute path
if [ -z $1 ] ; then 
  BASE="../Build-Ant/"
else
  BASE=$1
fi
 
# Domain name
if [ -z $2 ] ; then 
  SERVER="http://template.dev"
else
  SERVER=$2
fi

# Generates sitemap entry: 
function gen_entry() {
  echo "<url><loc>${SERVER}${1:1}</loc></url>"
}

# Generates entries for the subdirectory $1 including files mathcing pattern $2:
function gen_sub() {
( find $1 -name "$2" ) | while read filename
do
    gen_entry ${filename}
done
}

cd ../Build/

echo '<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'

# 1. Enter Base site to sitemap.xml
gen_entry //

# 2. Enter Specific files starting at site root


# 3. Enter Specific folders starting at site root. NOTE: will recursively process sub-folders
##gen_sub . \*.php
gen_sub . \*.html

echo '</urlset>'
cd - >/dev/null