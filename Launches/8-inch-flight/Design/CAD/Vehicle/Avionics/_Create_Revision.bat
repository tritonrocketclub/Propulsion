@echo off
set /p revision= "Enter Revision Number [xx]: "

md "%~dp0\tags\rev%revision%"

xcopy /S/V/F  "%~dp0\trunk" "%~dp0\tags\rev%revision%"

timeout /t 10