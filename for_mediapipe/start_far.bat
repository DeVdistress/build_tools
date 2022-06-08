ECHO ON

CALL set_paths.bat "C:\Python\Python39" "C:\msys64" "C:\msys64\usr\bin" "C:\bazel" "C:\nuget" "C:\opencv" "Z:\global\Utils\Windows\Java\jdk-11.0.12" "Z:\global\Lib\android\android-ndk" "Z:\global\Lib\android\android-sdk"

CALL ..\mount_disk_p.bat
CALL ..\mount_disk_w.bat
CALL ..\mount_disk_z.bat

P:
CD P:\MediaPipeUnityPlugin

:: Build for Windows 10
:: CALL python.exe build.py build --desktop cpu -v

:: Build for Android
CALL python.exe build.py build --android arm64 --android_ndk_api_level 21 --cxxopt=-std=c++14 -vv

PAUSE
%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"