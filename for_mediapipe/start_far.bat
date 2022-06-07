ECHO ON

CALL set_paths.bat "C:\Python\Python310" "C:\msys64" "C:\msys64\usr\bin" "C:\bazel" "C:\nuget"

:: -------------MSVC-------------
:: CALL "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat" -arch=amd64
CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

 PAUSE

CALL ..\mount_disk_p.bat

::PAUSE

CD P:\
%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"