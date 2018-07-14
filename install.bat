@ECHO off
setlocal EnableDelayedExpansion
SET GAMEDIR="C:\Program Files (x86)\steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
SET CFGFILES=Fp-AutoExec
IF NOT EXIST %GAMEDIR% (
    ECHO ERROR %GAMEDIR% does not exist! 
	ECHO You may be seeing this because your install location is not default, or your game is not installed.
	ECHO Autoexec will not be installed.
	ECHO Exiting...
	GOTO ERROREXIT
) ELSE (
	echo Confirm installation of %CFGFILES% into %GAMEDIR%
	SET /P AREYOUSURE=Are you sure (Y/[N]^)^? 
	IF /I "!AREYOUSURE!" NEQ "Y" GOTO QUIT
	xcopy %CFGFILES% %GAMEDIR%%CFGFILES% /Y /Q /I
)

:ERROREXIT
pause
EXIT /B 1

:QUIT
pause
EXIT /B 0