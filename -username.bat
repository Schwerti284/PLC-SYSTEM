@echo off
:: Set the output file path
set "outputFile=C:\Users\nico\Desktop\usernames.txt"

:: Clear or create the output file with a header
echo Username List > "%outputFile%"

:: Retrieve all user accounts and append them to the file
for /f "skip=1 tokens=*" %%A in ('wmic useraccount get name') do (
    if not "%%A"=="" (
        echo %%A >> "%outputFile%"
    )
)

:: Inform the user about the output
echo The usernames have been saved to the file: %outputFile%

