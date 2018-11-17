#! /bin/sh

#git config --local user.name "traviscibot"
#git config --local user.email "traviscibot@travisci.org"
echo "$TRAVIS_BRANCH"
cd ..
mkdir asd
cd asd
git clone --depth=50 --branch=xunit_dotnet_core https://github.com/kernerdev/travis-ci-test-with-unity.git
cd travis-ci-test-with-unity
ls -l
sudo chmod a+x ./Travis/tag.sh
sudo chmod a+x ./Travis/tag_incrementer.sh
sudo ./Travis/tag_incrementer.sh $TRAVIS_BRANCH version.txt
version=$(cat version.txt)
git add version.txt
git commit -m "version update $version"
git push
git tag "$version"
git push --tags