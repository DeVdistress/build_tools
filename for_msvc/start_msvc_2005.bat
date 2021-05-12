ECHO ON

CALL set_paths.bat

:: -------------MSVC-------------
CALL "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"

:: PAUSE

CALL c:\disk_p\mount_disk_p.bat

START devenv.exe