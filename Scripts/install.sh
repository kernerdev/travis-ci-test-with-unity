#!/bin/sh
cd ..
mkdir unityEditor
cd unityEditor
wget -O UnitySetup "https://beta.unity3d.com/download/dad990bf2728/UnitySetup-2018.2.7f1"
sudo chmod 777 UnitySetup
sudo ./UnitySetup -u  --install-location="$(pwd)" <<< 'y'
cd Editor
cat "it is enough now"
#sudo ./Unity -batchmode -projectPath "/home/kerner/New Unity Project" -runTests -testResults "/home/kerner/results.xml" -testPlatform editmode -nographics
