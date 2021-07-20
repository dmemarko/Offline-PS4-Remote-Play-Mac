#!/bin/sh

TARGET_APP_PATH="/Applications/RemotePlay.app"
cp sys.dylib "$TARGET_APP_PATH/Contents/Frameworks/sys.dylib"
./optool install -c load -p "@rpath/sys.dylib" -t "$TARGET_APP_PATH/Contents/MacOS/RemotePlay"
