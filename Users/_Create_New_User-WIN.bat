@echo off
set /p username= "Enter your username e.g. ntesla: "

md "%~dp0\%username%\_sandbox"
md "%~dp0\%username%\Temporary_Work"

set /p hold = "holding"
timeout /t 10