ECHO ON

:: -------------MSVC-------------
CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

CALL set_paths_2019.bat "C:\Python\Python27\" "%PROGRAMFILES(X86)%\Microsoft DirectX SDK (June 2010)\"

CALL ..\mount_disk_p.bat
CALL ..\mount_disk_w.bat

PAUSE

START devenv.exe

:: -------------far-------------
:: P:\
:: %COMSPEC% /k "%MY_FAR%\Far.exe mode con lines=9999"