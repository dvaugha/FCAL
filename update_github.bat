@echo off
echo Updating GitHub repository...
git add .
for /f "tokens=*" %%a in ('powershell -Command "Get-Date -Format 'M/d/yyyy h:mm tt'"') do set datetime=%%a
set commit_msg=Update %datetime%
echo Commit Message: "%commit_msg%"
git commit -m "%commit_msg%"
git branch -M main
git push -u origin main
echo Done!
pause
