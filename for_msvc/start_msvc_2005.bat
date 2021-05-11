ECHO ON

call set_paths.bat

:: -------------MSVC-------------
call "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"
::call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 8\VC\vcvarsall.bat"

:: PAUSE

call c:\disk_p\mount_disk_p.bat

 start devenv.exe