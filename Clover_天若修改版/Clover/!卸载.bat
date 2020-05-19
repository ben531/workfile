@ECHO OFF & CD /D %~DP0 & TITLE
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)
regsvr32 /u /s TabHelper32.dll
regsvr32 /u /s TabHelper64.dll
rd/s/q "%LOCALAPPDATA%\Clover"2>NUL
rd/s/q "%LOCALAPPDATA%\Clover.users"2>NUL
rd/s/q "%UserProfile%\AppData\LocalLow\Clover"2>NUL
rd/s/q "%UserProfile%\AppData\LocalLow\Clover.users"2>NUL
rd/s/q "%UserProfile%\Local Settings\Clover"2>NUL
rd/s/q "%UserProfile%\Local Settings\Clover.users"2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
start explorer
CLS & ECHO. & ECHO 卸载完成，任意键退出！ &&PAUSE>NUL & EXIT