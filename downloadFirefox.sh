#!/bin/bash

# This script is called after the npm package is installed.
# It will downoad and install a copy of Firefox within your project directory.

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    cp locationTemplates/mac lib/location.js
    wget http://ftp.mozilla.org/pub/firefox/releases/46.0/mac/en-US/Firefox%2046.0.dmg
    hdiutil mount "Firefox 46.0.dmg"
    cp -R "/Volumes/Firefox" firefox
    hdiutil unmount "/Volumes/Firefox/" 
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	# Do something under GNU/Linux platform
	cp locationTemplates/linux lib/location.js
	wget http://ftp.mozilla.org/pub/firefox/releases/46.0/linux-x86_64/en-US/firefox-46.0.tar.bz2
    tar -xjvf firefox-*.tar.bz2
fi
