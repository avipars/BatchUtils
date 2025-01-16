REM script to be run in parent where children are each git repos 
REM basically do a git pull in all subfolders that have the git file
@echo off
for /R %%G in (.) do (
  cd /D "%%~G"
  if exist .git (
    git pull
  )
  cd ..
)