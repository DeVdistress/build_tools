ECHO ON

:: -------------MSVC-------------
CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86

CALL set_paths_2008.bat "C:\Python\Python27\" "C:\Program Files (x86)\Microsoft DirectX SDK (March 2009)"

CALL c:\disk_p\mount_disk_p.bat

PAUSE

START devenv.exe

:: -------------far-------------
::cd P:\
::%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"