@echo off
title L2J-Frozen: Login Server 2016
:start
echo Starting L2J-Frozen 2016 Login Server.
echo Official website : http://www.l2jfrozen.com
echo Disfruta de mi Datapack DaNnyBione!
echo ------------------------------
echo.

java -Dfile.encoding=UTF8 -Xmx128m -XX:+UseSerialGC -XX:+AggressiveOpts -cp ./lib/*;l2jfrozen-core.jar com.l2jfrozen.loginserver.L2LoginServer

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Admin Restarted ...
ping -n 5 localhost > nul
echo.
goto start
:error
echo.
echo LoginServer terminated abnormaly
ping -n 5 localhost > nul
echo.
goto start
:end
echo.
echo LoginServer terminated
echo.
:question
set choix=q
set /p choix=Restart(r) or Quit(q)
if /i %choix%==r goto start
if /i %choix%==q goto exit
:exit
exit
pause
