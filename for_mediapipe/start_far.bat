ECHO ON

CALL set_paths.bat "C:\Python\Python39" "C:\msys64" "C:\msys64\usr\bin" "C:\bazel" "C:\nuget" "C:\opencv"

:: PAUSE

CALL ..\mount_disk_p.bat

:: PAUSE
P:
CD P:\MediaPipeUnityPlugin
CALL python.exe build.py build --desktop cpu -v
%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"