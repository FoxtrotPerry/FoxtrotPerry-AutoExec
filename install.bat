@ECHO off
setlocal EnableDelayedExpansion
SET GAMEDIR="C:\Program Files (x86)\steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
SET CFGFILES=Fp-AutoExec
REM Check if the game is installed in the default location. We'd like to make this better at finding the correct directory in the future
IF NOT EXIST %GAMEDIR% (
	REM If we don't find the install directory, fail and notify the user
    ECHO ERROR %GAMEDIR% does not exist! 
	ECHO You may be seeing this because your install location is not default, or your game is not installed.
	ECHO Autoexec will not be installed.
	ECHO Exiting...
	GOTO ERROREXIT
) ELSE (
	REM Ask user to confirm installation
	echo Confirm installation of %CFGFILES% into %GAMEDIR%
	SET /P AREYOUSURE=Are you sure (Y/[N]^)^? 
	IF /I "!AREYOUSURE!" NEQ "Y" GOTO QUIT
	REM Make directory and copy the files over into it
	xcopy %CFGFILES% %GAMEDIR%%CFGFILES% /Y /Q /I
)

:ERROREXIT
pause
EXIT /B 1

:QUIT
pause
EXIT /B 0