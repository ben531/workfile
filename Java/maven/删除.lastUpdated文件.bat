@echo off
echo ��ʼ...
for /f "delims=" %%i in ('dir /b /s "./*lastUpdated"') do (
    del /s /q %%i
)
echo ����
pause