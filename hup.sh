#!/bin/sh

/bin/ps -ef | grep DEV-AddArt | grep -v grep | awk '{print $2}' | xargs kill -9

./compile.sh

rm -rf "/Users/dhowe/Library/Application Support/Firefox/Profiles/3i6yox33.DEV-AddArt/extensions/development@add-art.org"

cp -r addart "/Users/dhowe/Library/Application Support/Firefox/Profiles/3i6yox33.DEV-AddArt/extensions/development@add-art.org"

/Applications/Firefox.app/Contents/MacOS/firefox-bin -no-remote -P DEV-AddArt &
