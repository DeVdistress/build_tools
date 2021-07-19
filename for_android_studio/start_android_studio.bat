ECHO ON

CALL ..\mount_disk_p.bat
CALL ..\mount_disk_w.bat
CALL ..\mount_disk_z.bat

PAUSE

CD "C:\Program Files\Android\Android Studio\bin\"
START studio64.exe
