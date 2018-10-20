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
  -silent-crashes \
  -logFile $(pwd)/travis/unity.log \
  -buildWindowsPlayer "$(pwd)/travis/Build/windows/$project.exe" \

echo 'Logs from build'
cat $(pwd)/travis/unity.log

if grep -q "Scripts have compiler errors." "$(pwd)/travis/unity.log"; then
  exit 1
fi