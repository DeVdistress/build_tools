ECHO ON

:: -------------MSVC-------------
CALL "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

CALL set_paths_2019.bat "C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)"

CALL c:\disk_p\mount_disk_p.bat

PAUSE

START devenv.exe