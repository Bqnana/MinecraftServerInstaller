@echo off
setlocal EnableExtensions EnableDelayedExpansion
echo Please put this file into a folder
echo Required so that the install wont break.
set /p ver=What Version would you like to Use? (1.8.9, 1.19.2): 
if "%ver%" == "1.8.9" (
  if exist bin\server-1.8.9 (
    cd bin\server-1.8.9
    java -Xms128M -Xmx2048M -jar server.jar
    PAUSE
  ) else (
    md bin\server-1.8.9
    cd bin\server-1.8.9
    echo eula=true> eula.txt
    curl https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar -o server.jar
    echo Make Sure to Port Forward so People can Join!
    echo https://www.youtube.com/watch?v=X75GbRaGzu8&t=155s
    java -Xms128M -Xmx2048M -jar server.jar 
    PAUSE
  )
)
if "%ver%" == "1.19.2" (
  if exist bin\server-1.19.2 (
    cd bin\server-1.19.2
    java -Xms128M -Xmx2048M -jar server.jar
    PAUSE
  ) else (
    md bin\server-1.19.2
    cd bin\server-1.19.2
    echo eula=true> eula.txt
    curl https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/307/downloads/paper-1.19.2-307.jar -o server.jar
    java -Xms128M -Xmx2048M -jar server.jar 
    PAUSE
  )
)

if exist (
 
) else (
  stop
)
