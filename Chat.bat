@echo off
set "directory=%~dp0"
set "directory=%directory:~0,-1%"
:start
title Chat
cls
color b
echo.
echo               ___  _           _
echo              / __^|^| ^|_   __ _ ^| ^|_
echo             ^| ^(__ ^|   \ / _` ^|^|  _^|
echo              \___^|^|_^|^|_^|\__/_^| \__^|
echo.
set /p "chat_username=Please enter the username: "
if "%chat_username%" == ".clear" (
    echo.> "%directory%\Chat_Log.bat"
    goto start
)
echo echo [SYSTEM] %chat_username% joined the chat! >> "%directory%\Chat_Log.bat"
goto chat
:chat
title %chat_username%'s Chat
cls
color b
echo.
echo               ___  _           _
echo              / __^|^| ^|_   __ _ ^| ^|_
echo             ^| ^(__ ^|   \ / _` ^|^|  _^|
echo              \___^|^|_^|^|_^|\__/_^| \__^|
echo.
set /p "send_message=Send message as (%chat_username%): "
if "%send_message%" == ".clear" (
    echo.> "%directory%\Chat_Log.bat"
    goto send
)
if "%send_message%" == ".logout" (
    echo echo [SYSTEM] %chat_username% left the chat! >> "%directory%\Chat_Log.bat"
    goto start
)
echo echo (%chat_username%): %send_message% >> "%directory%\Chat_Log.bat"
goto chat