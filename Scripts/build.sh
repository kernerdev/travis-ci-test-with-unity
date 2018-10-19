#!/bin/sh

project="travis"

echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/travis/unity.log \
  -projectPath $(pwd)/travis \
  -buildWindowsPlayer "$(pwd)/travis/Build/windows/$project.exe" \
  -quit

echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/travis/unity.log \
  -projectPath $(pwd)/travis \
  -buildOSXUniversalPlayer "$(pwd)/travis/Build/osx/$project.app" \
  -quit

echo "Attempting to build $project for Linux"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/travis/unity.log \
  -projectPath $(pwd)/travis \
  -buildLinuxUniversalPlayer "$(pwd)/travis/Build/linux/$project.exe" \
  -quit

echo 'Logs from build'
cat $(pwd)/travis/unity.log