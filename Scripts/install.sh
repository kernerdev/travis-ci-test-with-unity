#!/bin/sh
ls -l
cd ..
ls -l
mkdir unityEditor
cd unityEditor
ls -l
wget -O UnitySetup "https://beta.unity3d.com/download/dad990bf2728/UnitySetup-2018.2.7f1"
ls -l
sudo chmod 777 UnitySetup
ls -l
sudo ./UnitySetup -u  --install-location=/home/travis/build/kernerdev/unityEditor <<< 'y'
ls -l
cd Editor
ls -l
cat "it is enough now"
#sudo ./Unity -batchmode -projectPath "/home/kerner/New Unity Project" -runTests -testResults "/home/kerner/results.xml" -testPlatform editmode -nographics
