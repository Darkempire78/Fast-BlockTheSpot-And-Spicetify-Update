@ECHO OFF

TITLE Fast BTS ^& Spicetify Update
ECHO [91m--- Fast BTS ^& Spicetify Update ---[0m

ECHO.
ECHO [92m--------------------------[0m
ECHO [92m--- Updating Spicetify ---[0m
ECHO [92m--------------------------[0m


echo y| call spicetify apply

ECHO.
ECHO [92m-----------------------------[0m
ECHO [92m--- Updating BlockTheSpot ---[0m
ECHO [92m-----------------------------[0m
ECHO.

@REM Colors : 
@REM https://gist.githubusercontent.com/mlocati/fdabcaeb8071d5c75a2d51712db24011/raw/b710612d6320df7e146508094e84b92b34c77d48/win10colors.cmd
@REM https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line

@REM Stop the Spotify process
tasklist | find /i "Spotify.exe" >NUL && (
    taskkill /F /IM Spotify.exe
)

@REM Get the latest release
powershell -Command "Invoke-WebRequest https://github.com/mrpond/BlockTheSpot/releases/latest/download/chrome_elf.zip -OutFile chrome_elf.zip"
@REM Unzipe and move to Spotify
powershell Expand-Archive -Force ./chrome_elf.zip %APPDATA%/Spotify
@REM Delete chrome_elf.zip
del chrome_elf.zip

ECHO.

PAUSE