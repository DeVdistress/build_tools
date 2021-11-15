SET PATH_TO_JDK=%5
SET APKS_NAME=%3
SET BUNDLE_NAME=%1
SET BUNDLE_TOOL_NAME=%4
SET PACKAGE_NAME=%2

call adb uninstall %PACKAGE_NAME%

SET CMD_JAVA=%PATH_TO_JDK%\bin\java.exe -jar %BUNDLE_TOOL_NAME%

del /F /Q %APKS_NAME%
call %CMD_JAVA% build-apks --bundle=%BUNDLE_NAME% --output=%APKS_NAME% --local-testing

call %CMD_JAVA% install-apks --apks=%APKS_NAME% --adb=adb.exe

:: start app
call adb shell monkey -p %PACKAGE_NAME% -c android.intent.category.LAUNCHER 1