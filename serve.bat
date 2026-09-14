@echo off
set KOF=%~dp0toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat
echo Kof server: http://localhost:8080/
call "%KOF%" run "%~dp0src\server\Server.kf" --target jvm
