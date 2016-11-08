@echo off
set /p projectTitle= "Enter the project title (e.g. 8-inch-flight): "

md "%~dp0\%projectTitle%\Analysis"
md "%~dp0\%projectTitle%\Analysis\Simulation\"
md "%~dp0\%projectTitle%\Analysis\Simulation\trunk"
md "%~dp0\%projectTitle%\Analysis\Simulation\tags"

md "%~dp0\%projectTitle%\Design"
md "%~dp0\%projectTitle%\Design\Nozzle\"
md "%~dp0\%projectTitle%\Design\Nozzle\CAD"
md "%~dp0\%projectTitle%\Design\Nozzle\CAD\trunk"
md "%~dp0\%projectTitle%\Design\Nozzle\CAD\tags"
md "%~dp0\%projectTitle%\Design\Nozzle\Calculations"
md "%~dp0\%projectTitle%\Design\Nozzle\Calculations\trunk"
md "%~dp0\%projectTitle%\Design\Nozzle\Calculations\tags"

md "%~dp0\%projectTitle%\Manufacturing"
md "%~dp0\%projectTitle%\Manufacturing\Nozzle"

echo on

timeout /t 10