@echo off
title SME SAGE - Push to GitHub
cd /d "%~dp0"
echo Pushing SME SAGE to GitHub...
"%~dp0\.bin\mingit\cmd\git.exe" push -u origin main
pause
