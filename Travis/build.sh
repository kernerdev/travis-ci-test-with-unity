#! /bin/sh

# Example build script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# Change this the name of your project. This will be the name of the final executables as well.
project="Travis-Unity"
# DATE=`date +%y.%m.%d`
# versionName="a.${DATE}"

init_path=$(pwd)
mkdir unity_branch
cd unity_branch
git clone --depth=50 --branch=unity_branch https://github.com/kernerdev/travis-ci-test-with-unity.git

pwd
ls -l
cd travis-ci-test-with-unity
unity_project_path=$(pwd)
ls -l

echo "Attempting to run test $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -logFile \
 -silent-crashes \
 -projectPath $unity_project_path/ \
 -executeMethod BuildScript.Windows \
 -testPlatform editmode \
 -runTests \
 -testResults "$init_path/wresults.xml" 
 
 
$init_path/Travis/unity_test_parser.sh $init_path/wresults.xml


 

# export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
# export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
# export JAVA_HOME=$(/usr/libexec/java_home)

# echo "Attempting to build $project for Android"
# /Applications/Unity/Unity.app/Contents/MacOS/Unity \
#   -batchmode \
#   -nographics \
#   -silent-crashes \
#   -logFile \
#   -projectPath $(pwd)/ \
#   -quit \
#   -executeMethod BuildScript.Android

# echo "Attempting to build $project for iOS"
# /Applications/Unity/Unity.app/Contents/MacOS/Unity \
#   -batchmode \
#   -nographics \
#   -silent-crashes \
#   -logFile \
#   -projectPath $(pwd)/ \
#   -quit \
#   -executeMethod BuildScript.iOS
echo "$init_path"
ls -l $init_path
pwd
ls -l
echo 'Attempting to zip builds'
cd Build
#tar -czvf linux.tar.gz linux/
#hdiutil create osx.dmg -srcfolder osx/ -ov
zip -r windows.zip windows/
# zip -r ios.zip ios/
