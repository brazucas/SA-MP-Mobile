#!/bin/sh

sudo NDK_PROJECT_PATH=~/htdocs/BRZ/SA-MP-Mobile/ NDK_DEBUG=0 ~/Downloads/android-ndk-r14b/ndk-build -B
cp -fR ~/htdocs/BRZ/SA-MP-Mobile/libs/armeabi-v7a/libsamp.so ~/htdocs/BRZ/SA-MP-Mobile/files/apk/lib/armeabi-v7a/libsamp.so
java -jar /Users/pedropapadopolis/Downloads/apktool_2.4.1.jar b ~/htdocs/BRZ/SA-MP-Mobile/files/apk -o ~/htdocs/BRZ/SA-MP-Mobile/files/brzlauncher.apk -f
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -storepass "abcd1234" -keypass "abcd1234" -keystore ~/htdocs/BRZ/SA-MP-Mobile/files/sampandroid.jks ~/htdocs/BRZ/SA-MP-Mobile/files/brzlauncher.apk sampandroid
adb install -r ~/htdocs/BRZ/SA-MP-Mobile/files/brzlauncher.apk
sudo chown -R pedropapadopolis ~/htdocs/BRZ/SA-MP-Mobile/