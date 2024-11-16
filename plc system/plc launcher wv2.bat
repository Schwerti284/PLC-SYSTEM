@echo off
REM Test the internet connection with a ping
ping -n 1 www.google.com >nul 2>&1

REM Check if the ping was successful (errorlevel 0)
if %errorlevel% equ 0 (
    echo Internet connection is available.
    
    REM Change to the directory with the scripts
    cd "C:\Users\nico\Desktop\skripts" || (
        echo Error: Directory not found.
        timeout /t 3
        exit /b
    )
    
    REM Start a new CMD window
    echo 
    start cmd
) else (
    REM Set the color to red and display the error message
    color ce
    echo No internet connection.
    
    REM Wait for 3 seconds before exiting the script
    timeout /t 3
    exit /b
)
