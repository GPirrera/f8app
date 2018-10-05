#!/bin/bash
set -ex
brew update
brew uninstall node@6
brew install node
brew install watchman
npm install -g react-native-git-upgrade
#cd "${APPCENTER_SOURCE_DIRECTORY}"
#npm install --verbose
#react-native -v
#cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
#pod install
#cp "${APPCENTER_SOURCE_DIRECTORY}/scripts/project.pbxproj" "${APPCENTER_SOURCE_DIRECTORY}/node_modules/react-native-native-video-player/ios/RNVideoPlayer.xcodeproj/project.pbxproj"
#cd "${APPCENTER_SOURCE_DIRECTORY}/ios"
#react-native link