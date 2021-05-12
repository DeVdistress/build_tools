ECHO ON

:: -------------MSVC-------------
CALL "%VS80COMNTOOLS%\..\..\VC\vcvarsall.bat"

CALL set_paths_2005.bat "C:\Python\Python27\" "C:\Program Files (x86)\Microsoft DirectX SDK (March 2009)\"

CALL ..\mount_disk_p.bat

PAUSE

START devenv.exe

:: -------------far-------------
::cd P:\
::%COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"