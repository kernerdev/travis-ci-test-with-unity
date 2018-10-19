# unity-ci-test [![Build Status](https://travis-ci.org/SebastianJay/unity-ci-test.svg?branch=master)](https://travis-ci.org/SebastianJay/unity-ci-test)
An example of continuous integration for Unity projects.

This project uses the [excellent tutorial by Jonathan Porta](https://jonathan.porta.codes/2015/04/17/automatically-build-your-unity3d-project-in-the-cloud-using-travisci-for-free/) as well as the [Unity manual on the test runner](https://docs.unity3d.com/Manual/testing-editortestsrunner.html) to run unit tests on TravisCI and proceed to build the project. From there, the builds are uploaded to a dedicated server (using some tips from [Neemzy](https://neemzy.org/articles/deploy-to-your-own-server-through-ssh-with-travis-ci)). A cloud alternative for hosting builds is Travis's S3 addon that integrates with AWS.

Parts of this project (i.e. the build and upload) can also be accomplished through Unity Cloud Build with _many_ fewer steps, so if build automation is all you need then [check that out](https://unity3d.com/services/cloud-build). That being said, Travis offers tighter control (e.g. running unit tests before the build, possibly deploying your game after the build) -- you are free to fork and customize.
asd