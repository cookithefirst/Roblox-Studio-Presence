start cmd /c npm install
cls
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
echo                ..                                
echo               .55YJ?!~^:.                        
echo               7PPPPPPPPP5YJ?!~^:.                
echo              :5PPPPPPPPPPPPPPPP55YJ7!~:          
echo              ?PPPPPPPPPPPPPPPPPPPPPPPP7          
echo             ^PPPPPPPP55PPPPPPPPPPPPPP5.          
echo             755PPPPPP~.^~!?JY5PPPPPPP~           
echo               .:~.?J?         .:~!?JJ            
echo           .JY?7~^:.        ?J?!~:.               
echo           .PPPPPPP5YJ?!~^.~PPPPPPP57             
echo          .5PPPPPPPPPPPPPP5PPPPPPPPP:             
echo          7PPPPPPPPPPPPPPPPPPPPPPPP7              
echo          :^!7?Y55PPPPPPPPPPPPPPPP5.              
echo                ..:~.7JY55PPPPPPPP!               
echo                        .:^~!?JY5Y.               
echo                                ..                 
call :colorEcho 0b "Roblox Studio Presence - Installation"
echo.
echo This is used for installing discord.js and other packages required for RSP to work.
echo Wait until the second window disappears, then you're good to go.
echo To try it, run the start.bat file.
echo.
call :colorEcho 0c "-- WARNING --"
echo.
echo Incase installation fails, it means that your NPM/Node.js is outdated, or hasn't been installed yet.
echo To fix that, head to https://nodejs.org and install Node.js.
echo.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i