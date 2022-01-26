# This file will delete temp files for users. 
# Create a logon to run

@echo off

for /f "delims=|" %%f in ('dir /B /A:D-H-R c:\users') do (del "C:\Users\%%f\AppData\Local\Temp\*" /s/q && (for /f "delims=|" %%i in ('dir /B /A:D-H-R C:\Users\%%f\AppData\Local\Temp') do rmdir "C:\Users\%%f\AppData\Local\Temp\%%i" /s/q ))
