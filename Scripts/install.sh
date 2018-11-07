#!/bin/bash
sudo apt-get --yes --force-yes install gconf-service
sudo apt-get --yes --force-yes install lib32gcc1 (>= 1:4.1.1)
sudo apt-get --yes --force-yes install lib32stdc++6 (>= 4.6)
sudo apt-get --yes --force-yes install libasound2 (>= 1.0.23)
sudo apt-get --yes --force-yes install libc6 (>> 2.15)
sudo apt-get --yes --force-yes install libc6-i386 (>= 2.15)
sudo apt-get --yes --force-yes install libcairo2 (>= 1.6.0)
sudo apt-get --yes --force-yes install libcap2 (>= 2.10)
sudo apt-get --yes --force-yes install libcups2 (>= 1.4.0)
sudo apt-get --yes --force-yes install libdbus-1-3 (>= 1.2.14)
sudo apt-get --yes --force-yes install libexpat1 (>= 1.95.8)
sudo apt-get --yes --force-yes install libfontconfig1 (>= 2.8.0)
sudo apt-get --yes --force-yes install libfreetype6 (>= 2.3.9)
sudo apt-get --yes --force-yes install libgcc1 (>= 1:4.1.1)
sudo apt-get --yes --force-yes install libgconf-2-4 (>= 2.31.1)
sudo apt-get --yes --force-yes install libgdk-pixbuf2.0-0 (>= 2.22.0)
sudo apt-get --yes --force-yes install libgl1-mesa-glx | libgl1
sudo apt-get --yes --force-yes install libglib2.0-0 (>= 2.31.8)
sudo apt-get --yes --force-yes install libglu1-mesa | libglu1
sudo apt-get --yes --force-yes install libgtk2.0-0 (>= 2.24.0)
sudo apt-get --yes --force-yes install libnspr4 (>= 1.8.0.10)
sudo apt-get --yes --force-yes install libnss3 (>= 3.14.3)
sudo apt-get --yes --force-yes install libpango1.0-0 (>= 1.22.0)
sudo apt-get --yes --force-yes install libstdc++6 (>= 4.6)
sudo apt-get --yes --force-yes install libx11-6 (>= 2:1.4.99.1)
sudo apt-get --yes --force-yes install libxcomposite1 (>= 1:0.3-1)
sudo apt-get --yes --force-yes install libxcursor1 (>> 1.1.2)
sudo apt-get --yes --force-yes install libxdamage1 (>= 1:1.1)
sudo apt-get --yes --force-yes install libxext6
sudo apt-get --yes --force-yes install libxfixes3
sudo apt-get --yes --force-yes install libxi6 (>= 2:1.2.99.4)
sudo apt-get --yes --force-yes install libxrandr2 (>= 2:1.2.99.2)
sudo apt-get --yes --force-yes install libxrender1
sudo apt-get --yes --force-yes install libxtst6
sudo apt-get --yes --force-yes install zlib1g (>= 1:1.1.4)
sudo apt-get --yes --force-yes install debconf (>= 0.5) | debconf-2.0
sudo apt-get --yes --force-yes install npm
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
