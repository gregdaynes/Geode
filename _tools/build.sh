#!/bin/bash

# Duplicate hammer folder
# ant build seems to trigger a rebuild in hammer even with folders excluded.
cp -R ../Build ../Build-Ant

# run apache ant
cd ./ant-build;
ant build;
cd ..;

# generate sitemap from html files
sh sitemap/sitemap.sh | tee ../publish/sitemap.xml

# cleanup our duplicate folder and ant's temporary folder
rm -rf ../Build-Ant;
rm -rf ../_tmp;