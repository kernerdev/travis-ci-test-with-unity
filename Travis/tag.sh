#! /bin/sh

git config --local user.name "traviscibot"
git config --local user.email "traviscibot@travisci.org"
./tag_incrementer.sh $TRAVIS_BRANCH version.txt 
./Travis/tag_incrementer.sh $TRAVIS_BRANCH version.txt
version=$(cat version.txt)
git add ../version.txt
git commit -m "version update $version"
git push
git tag "$version"
git push --tags