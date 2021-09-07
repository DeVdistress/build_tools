# How to Install apk via Android Debug Bridge (ADB) tool (adb exe+2 required dlls provided in same folder and required one .jar file of bundletool)

## Installing apk+obb file onto connected Android device
1. Put all your downloaded .apk and .obb files into a single folder.
2. Connect your Android device, and make sure it's recognized (console command "adb devices" should list a connected device)
3. Open a terminal/command prompt, and change to the directory where your .apk and obb files reside.
4. You can launch "apk and obb install.cmd" to install both apk & obb files at once - in this case you don't need below steps.

## Downloading newer version adb
[platform-tools](https://developer.android.com/studio/releases/platform-tools)

## Downloading newer version bundletool
[bundletool](https://github.com/google/bundletool/releases)