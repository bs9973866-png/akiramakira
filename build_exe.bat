@echo off
setlocal
cd /d "%~dp0"
py -3 -m PyInstaller --noconfirm --clean --windowed --name AkiraMakira --onedir --collect-all PySide6 main.py
if errorlevel 1 goto failed
echo.
echo Build complete: dist\AkiraMakira\AkiraMakira.exe
pause
exit /b 0
:failed
echo.
echo Build failed. Check the output above.
pause
exit /b 1
