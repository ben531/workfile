@ECHO OFF & CD /D %~DP0 & TITLE 绿化
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

regsvr32  TabHelper32.dll
If "%PROCESSOR_ARCHITECTURE%"=="AMD64"  regsvr32  TabHelper64.dll

ECHO. & ECHO 完成，任意键退出！ &&PAUSE>NUL & EXIT