#!/bin/bash

echo "ManiFetch v1.0 by HexagonWin"
echo "Target device is $1, on Android $2."
echo "Attempt to download manifest from raw.githubusercontent.com/ahisky-droid/manifest/$1/$2/roomservice.xml"
mkdir -p .repo/local_manifests
cd .repo/local_manifests
wget https://raw.githubusercontent.com/ahisky-droid/manifest/$1/$2/roomservice.xml
cd ../../
echo "Done! Now run repo sync :)"
echo "Happy building!"
