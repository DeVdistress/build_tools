ECHO ON

::call set_paths.bat C:\build_tools\openocd-0.10.0-201701241841 C:\build_tools\gcc-arm-none-eabi-5_3-2016q1-20160330-win32\bin bin %SYSTEMDRIVE%\msys\1.0 %SYSTEMDRIVE%\mingw_7_2_0 jdk1.8.0_144 jre1.8.0_144 %SYSTEMDRIVE%\boost\boost_1_65_1
call set_paths.bat

:: --------------Qt--------------
:: call C:\Qt\4.8.6\bin\qtvars.bat vsvars
:: call C:\Qt\Qt5.10.1\5.10.1\msvc2017_64\bin\qtenv2.bat

:: -------------MSVC-------------
call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
:: call "%PROGRAMFILES(X86)%\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"
:: call "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"

:: -------------Python-------------
:: call C:\Python27\scripts\env.bat C:\Python27

:: PAUSE

call c:\disk_p\mount_disk_p.bat

:: for Microsoft Visual Studio 9.0
:: start VCExpress.exe

:: for Microsoft Visual Studio 14.0
:: start WDExpress.exe

:: for Microsoft Visual Studio 2017
:: start "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"
 start devenv.exe