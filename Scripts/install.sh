#!/bin/bash


sudo apt-get --yes --force-yes install gconf-service lib32stdc++6 libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libglib2.0-0 libglu1-mesa libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf libproxy1 glib-networking-services
sudo apt-get --yes --force-yes install glib-networking
sudo apt-get --yes --force-yes install libsoup2.4-1
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
