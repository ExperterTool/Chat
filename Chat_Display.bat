@echo off
set "directory=%~dp0"
set "directory=%directory:~0,-1%"
:loop
title Chat Display
cls
color b
call "%directory%\Chat_Log.bat"
timeout /t 2 /nobreak >nul
goto loop