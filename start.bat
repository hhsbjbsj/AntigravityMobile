@echo off
title Antigravity Mobile Bridge
cd /d "C:\Users\user\AntigravityMobile"
set MOBILE_SKIP_AUTH_PROMPT=1

echo ===================================================
echo   Antigravity Mobile Server
echo ===================================================
echo.
echo Stopping existing process on port 5000...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :5000 ^| findstr LISTENING') do taskkill /F /PID %%a >nul 2>&1

echo.
echo Server starting...
echo Phone Connect URL: http://192.168.1.7:5000
echo App IP: 192.168.1.7  Port: 5000
echo.
echo Keep this window open (minimize it).
echo ===================================================
echo.

node "C:\Users\user\AntigravityMobile\src\http-server.mjs"
pause
