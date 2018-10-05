#!/bin/bash
brew install node
brew install watchman
npm install -g react-native-cli
npm install -g react-native-git-upgrade
cd "${APPCENTER_SOURCE_DIRECTORY}"
printf "==========SOURCES DIRECTORY: ${PWD}=============="

react-native-git-upgrade
npm install
cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
pod install
cp "${APPCENTER_SOURCE_DIRECTORY}/scripts/project.pbxproj" "${APPCENTER_SOURCE_DIRECTORY}/node_modules/react-native-native-video-player/ios/RNVideoPlayer.xcodeproj/project.pbxproj"
cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
react-native link