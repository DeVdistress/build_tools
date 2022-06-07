ECHO ON

CALL set_paths.bat "C:\Python\Python39" "C:\msys64" "C:\msys64\usr\bin" "C:\bazel" "C:\nuget" "C:\opencv"

CALL ..\mount_disk_p.bat

P:
CD P:\MediaPipeUnityPlugin
CALL python.exe build.py build --desktop cpu -v
PAUSE
%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"