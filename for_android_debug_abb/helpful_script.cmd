adb uninstall %4

SET PATH_TO_JDK=%5
SET APKS_NAME=%1
SET BUNDLE_NAME=%2
SET BUNDLE_TOOL_NAME=%3
del /F /Q %APKS_NAME%

SET CMD_JAVA=%PATH_TO_JDK%\bin\java.exe -jar %BUNDLE_TOOL_NAME%
call %CMD_JAVA% build-apks --bundle=%BUNDLE_NAME% --output=%APKS_NAME% --local-testing
call %CMD_JAVA% install-apks --apks=%APKS_NAME% --adb=adb.exe