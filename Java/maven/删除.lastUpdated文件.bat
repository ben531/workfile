@echo off
echo ¿ªÊ¼...
for /f "delims=" %%i in ('dir /b /s "./*lastUpdated"') do (
    del /s /q %%i
)
echo ½áÊø
pause