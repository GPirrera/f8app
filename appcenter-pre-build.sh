#!/bin/bash
set -ex
cd "${APPCENTER_SOURCE_DIRECTORY}"
printf "==========SOURCES DIRECTORY: ${PWD}=============="
react-native-git-upgrade
npm install babel-core --verbose
npm install react-native-cli --verbose
#cd "${APPCENTER_SOURCE_DIRECTORY}"
#npm install --verbose
cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
pod install
cp "${APPCENTER_SOURCE_DIRECTORY}/scripts/project.pbxproj" "${APPCENTER_SOURCE_DIRECTORY}/node_modules/react-native-native-video-player/ios/RNVideoPlayer.xcodeproj/project.pbxproj"
#cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
#react-native link
npm start -- --reset-cache