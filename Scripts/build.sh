#!/bin/sh

project="travis"
echo "Start build.sh"
echo $(pwd) 
ls -l
cd travis
ls -l
cd ..

echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/travis/unity.log \
  -projectPath $(pwd)/travis \
  -buildWindowsPlayer "$(pwd)/travis/Build/windows/$project.exe" \
  -runEditorTests \
  -editorTestsResultFile $(pwd)/travis/test.xml \
  -quit


echo 'Logs from build'
cat $(pwd)/travis/unity.log

if grep -q "Scripts have compiler errors." "$(pwd)/travis/unity.log"; then
  exit 1
fi