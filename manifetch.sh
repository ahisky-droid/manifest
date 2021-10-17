#!/bin/bash

echo "ManiFetch v1.1 by HexagonWin"
echo "What is your device? (Example : f320)"
read device
echo "What's the android version that you're gonna build? (Example : 11)"
read version
echo "Target device is $device, on Android $version."
echo "Attempt to download manifest from raw.githubusercontent.com/ahisky-droid/manifest/$device/$version/roomservice.xml"
mkdir -p .repo/local_manifests
cd .repo/local_manifests
wget https://raw.githubusercontent.com/ahisky-droid/manifest/$device/$version/roomservice.xml
cd ../../
echo "Done! Now run repo sync :)"
echo "Happy building!"
