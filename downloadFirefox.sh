#!/bin/bash

# This script is called after the npm package is installed.
# It will downoad and install a copy of Firefox within your project directory.

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    wget http://ftp.mozilla.org/pub/firefox/releases/47.0/mac/en-US/Firefox%2047.0.dmg
    hdiutil mount "Firefox 47.0.dmg"
    cp -R "/Volumes/Firefox" firefox
    hdiutil unmount "/Volumes/Firefox/" 
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	# Do something under GNU/Linux platform
	wget http://ftp.mozilla.org/pub/firefox/releases/47.0/linux-x86_64/en-US/firefox-47.0.tar.bz2
    tar -xjvf firefox-*.tar.bz2
fi
