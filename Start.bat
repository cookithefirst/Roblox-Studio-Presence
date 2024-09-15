start cmd /c forever start index.js
cls
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0b "Roblox Studio Presence - Activated"
echo.
echo You've started RPS successfully.
echo And don't worry, I've already placed our behind-the-scenes in the background.
echo So you won't get any disturbance anytime soon.
echo.
echo Be wary that you do have to reopen this everytime you restart your computer.
echo If you want an automatic option, make sure to suggest it :]
echo.
echo You can exit this window at anytime you like.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i