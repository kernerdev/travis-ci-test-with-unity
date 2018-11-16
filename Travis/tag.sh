#! /bin/sh

git config --local user.name "traviscibot"
git config --local user.email "traviscibot@travisci.org"
./tag_incrementer.sh $TRAVIS_BRANCH ../versions.txt 
./Travis/tag_incrementer.sh $TRAVIS_BRANCH ../versions.txt
version=$(cat ../versions.txt)
git add ../version.txt
git commit -m "version update $version"
git push
git tag "$version"
git push --tags