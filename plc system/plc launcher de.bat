@echo off
ping -n 1 www.google.com >nul 2>&1

if %errorlevel% equ 0 (
    echo Internetverbindung besteht.
	cd "C:\Users\nico\Desktop\skripts"
	echo  

    start cmd
	
) else (
color ce
    echo Keine Internetverbindung.
	timeout /t 3
	exit
)
