@echo off
set KOF=%~dp0toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat
call "%KOF%" run "%~dp0src\cli\Main.kf" --target jvm
