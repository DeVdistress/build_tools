ECHO ON

call set_paths.bat "C:\Python\Python27\" "C:\Program Files (x86)\Microsoft DirectX SDK (March 2009)"
:: call set_paths.bat C:\Python\Python39\

:: -------------MSVC-------------
call "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"
:: call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
:: call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
:: call "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat" -arch=amd64

:: PAUSE

call c:\disk_p\mount_disk_p.bat

::PAUSE

cd P:\

%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"