@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if errorlevel 1 (
  echo Python 3.10+ was not found. Install it from https://www.python.org/downloads/windows/
  pause
  exit /b 1
)
py -3 -m pip install --upgrade pip
if errorlevel 1 goto failed
py -3 -m pip install -r requirements.txt
if errorlevel 1 goto failed
echo.
echo Dependencies installed. Run start.bat
pause
exit /b 0
:failed
echo.
echo Installation failed. Check the error above.
pause
exit /b 1
