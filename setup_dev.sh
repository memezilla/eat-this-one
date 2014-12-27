#!/bin/bash

set -e

# Install dependencies.
sudo npm install
bower install

# Create cordova app and add dependencies.
cordova create dist/app "com.monllao.david.eatthisone" "Eat this one" --save-copy=public/shared-build

# App icon.
ln icon.png dist/app/icon.png

cd dist/app

# TODO: Other platforms
cordova platform add android

cordova plugin add org.apache.cordova.globalization
cordova plugin add org.apache.cordova.device
cordova plugin add https://github.com/phonegap-build/PushPlugin.git
cordova plugin add https://github.com/katzer/cordova-plugin-local-notifications.git
cordova plugin add org.apache.cordova.camera
cordova plugin add https://git-wip-us.apache.org/repos/asf/cordova-plugin-dialogs.git
cordova plugin add https://github.com/apache/cordova-plugin-inappbrowser.git
cordova plugin add https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin.git
cordova plugin add org.apache.cordova.contacts
