#!/bin/bash
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 libglib2.0-0:i386 libsoup2.4-1:i386 libgtk-3-0:i386 libwebkitgtk-3.0-0:i386
sudo apt-get --yes --force-yes install -f gconf-service libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libglib2.0-0 libglu1-mesa libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf glib-networking-services
sudo apt-get update
sudo apt-get install libsoup2.4-dev libsoup-gnome2.4-1 libsoup-gnome2.4-dev
sudo apt-get -f install libarchive-dev
sudo ln -s /usr/lib/x86_64-linux-gnu/libarchive.so.13 /usr/lib/x86_64-linux-gnu/libarchive.so.13
ls -l
cd ..
ls -l
mkdir game
cd game
git clone --depth=50 --branch=unity_branch https://github.com/kernerdev/travis-ci-test-with-unity.git kernerdev/game
cd ..
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
sudo ./Unity -batchmode -projectPath "/home/travis/build/kernerdev/game/travis" -runTests -testResults "/home/travis/build/kernerdev/results.xml" -testPlatform editmode -nographics
cat ~/.config/unity3d/Editor.log
cat /home/travis/build/kernerdev/results.xml