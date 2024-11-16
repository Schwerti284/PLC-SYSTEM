::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBVdTwu+GG6pDaET+NTo5PiOslkOaPIze8/Iw6eaJe0v/ED2Zp8i2H9UpNsAD1tUfwelbQcxuy5VoCTVeZfS4UHkUk3p
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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
