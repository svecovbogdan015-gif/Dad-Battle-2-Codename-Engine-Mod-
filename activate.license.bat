@echo off
chcp 65001 >nul
title License Verification

:start
cls
echo ==========================================
echo       ENTER YOUR ACTIVATION CODE
echo ==========================================
set /p "code=Code: "

if "%code%"=="8809-4356-1154-6745" goto success
if "%code%"=="8888-0453-0901-1149" goto success

:fail
echo.
echo [ERROR] Invalid code! Access denied.
timeout /t 3 >nul
exit

:success
:: Открываем ссылку на Google Drive
start "" "https://drive.google.com/file/d/1MyPlQp5_pIW37f2BJY8zztlFo4UxSKug/view"

echo.
echo [SUCCESS] License activated!
echo Your access has been confirmed.
echo.
pause
exit
