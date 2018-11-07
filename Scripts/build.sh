#!/bin/sh

project="travis"
echo "Start build.sh"
echo $(pwd) 
ls -l
cd travis
ls -l
cd ..

echo "Attempting to build $project for Windows"
sudo /Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -runTests  \
  -testPlatform editmode \
  -batchmode \
  -nographics \
  -projectPath $(pwd)/travis \
  -testResults $(pwd)/travis/results.xml \

echo 'Logs from build'
ls -l
cd travis 
ls -l
