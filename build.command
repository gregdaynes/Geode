#!/bin/bash

directory="$( dirname "${BASH_SOURCE[0]}" )";

cd $directory;
cd ./resources/build-script/;

echo "Building...";

ant build;

exit;