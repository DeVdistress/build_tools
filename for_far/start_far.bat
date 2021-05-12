ECHO ON

CALL set_paths.bat "C:\Python\Python27\" "C:\Program Files (x86)\Microsoft DirectX SDK (March 2009)"
:: call set_paths.bat C:\Python\Python39\

:: -------------MSVC-------------
CALL "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat" -arch=amd64
:: CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

:: PAUSE

CALL c:\disk_p\mount_disk_p.bat

::PAUSE

CD P:\
%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"