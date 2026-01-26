@echo off
echo Updating GitHub repository...
git add .
set /p commit_msg="Enter commit message (default: Update): "
if "%commit_msg%"=="" set commit_msg=Update
git commit -m "%commit_msg%"
git branch -M main
git push -u origin main
echo Done!
pause
