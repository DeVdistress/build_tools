@echo off 

SET APKS_NAME=%1
SET PACKAGE_NAME=%2

echo Process uninstall apk is starting
call adb uninstall %PACKAGE_NAME%

echo Process install apk is starting
call adb install %APKS_NAME%.apk

:: start app
call adb shell monkey -p %PACKAGE_NAME% -c android.intent.category.LAUNCHER 1