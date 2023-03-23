@echo off
setlocal enabledelayedexpansion

if "%~1" == "help" goto :HashMap_help

:HashMap_set
set "HashMap.%~1=%~2"
goto :eof

:HashMap_get
set "HashMapValue=!HashMap.%~1!"
echo !HashMapValue!
goto :eof

:HashMap_contains
set "HashMapKey=HashMap.%~1"
if defined %HashMapKey% (
    echo true
) else (
    echo false
)
goto :eof
:HashMap_clear
for /f "delims==" %%v in ('set HashMap.') do set "%%v="
goto :eof

:HashMap_help
echo.
echo Usage: call HashMap.bat COMMAND [PARAMETERS]
echo.
echo Commands:
echo set  (key) (value)   Sets the value for the given key in the HashMap
echo get  (key)           Gets the value for the given key from the HashMap
echo contains (key)       Checks if the HashMap contains the given key
echo clear                Clears all values from the HashMap
echo help                 Displays this usage information
echo.
goto :eof

endlocal
