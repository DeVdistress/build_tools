@ECHO OFF

IF [%1]==[] (
	SET MY_PYTHON=""
) ELSE (
	SET MY_PYTHON="%1"
)

IF [%2]==[] (
	IF DEFINED DXSDK_DIR (
		ECHO|SET /p="DXSDK_DIR = %DXSDK_DIR%"
		SET MY_DIRECT="%DXSDK_DIR%"
	) ELSE (
		ECHO|SET /p="DXSDK_DIR is empty"
		SET MY_DIRECT=""
	)
) ELSE (
	SET DXSDK_DIR=[%2]
	ECHO|SET /p="DXSDK_DIR = %DXSDK_DIR%"
	SET MY_DIRECT="%DXSDK_DIR%"
)

SET MY_FAR="C:\Program Files\Far Manager"

SET PATH=%MY_FAR%;%MY_DIRECT%;%MY_PYTHON%;%PATH%
