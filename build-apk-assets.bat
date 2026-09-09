@echo off
setlocal enabledelayedexpansion
title FoodLens Android Asset Bundler

echo =========================================================
echo   FoodLens v2.0 - Android Studio Web Asset Bundler
echo =========================================================
echo.

cd /d "%~dp0"

:: Check if Node is installed
where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js and npm are not found in your PATH!
    echo Please install Node.js from https://nodejs.org
    pause
    exit /b 1
)

echo [1/4] Installing web dependencies...
call npm install
if %errorlevel% neq 0 (
    echo [ERROR] npm install encountered an issue!
    pause
    exit /b 1
)

echo.
echo [2/4] Compiling fresh production bundle with Vite...
call npm run build
if %errorlevel% neq 0 (
    echo [ERROR] Vite build failed!
    pause
    exit /b 1
)

echo.
echo [3/4] Wiping old Android assets cache...
if exist "android\app\src\main\assets\dist" (
    rd /s /q "android\app\src\main\assets\dist"
)
mkdir "android\app\src\main\assets\dist"

echo.
echo [4/4] Copying fresh dist to android/app/src/main/assets/dist...
xcopy /E /I /Y "dist\*" "android\app\src\main\assets\dist\"

echo.
echo =========================================================
echo [SUCCESS] Fresh v2.0 assets synced into Android project!
echo.
echo IMPORTANT NEXT STEPS IN ANDROID STUDIO:
echo 1. In Android Studio, click: Build -> Clean Project
echo 2. Click: Build -> Build Bundle(s) / APK(s) -> Build APK(s)
echo 3. On your phone: UNINSTALL the old FoodLens app first!
echo 4. Install the new app-debug.apk (You will see 'v2.0 ULTRA')
echo =========================================================
echo.
pause
