@ECHO OFF

TITLE Fast BTS ^& Spicetify Update
ECHO [91m--- Fast BTS ^& Spicetify Update ---[0m

ECHO.
ECHO [92m--------------------------[0m
ECHO [92m--- Updating Spicetify ---[0m
ECHO [92m--------------------------[0m
ECHO.

echo y| call spicetify apply

ECHO.
ECHO [92m-----------------------------[0m
ECHO [92m--- Updating BlockTheSpot ---[0m
ECHO [92m-----------------------------[0m
ECHO.

@REM Read config.txt and set the path to BTSPath
set /p BTSPath=<config.txt
cd %BTSPath%
call BlockTheSpot.bat

@REM Colors : 
@REM https://gist.githubusercontent.com/mlocati/fdabcaeb8071d5c75a2d51712db24011/raw/b710612d6320df7e146508094e84b92b34c77d48/win10colors.cmd
@REM https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line

PAUSE