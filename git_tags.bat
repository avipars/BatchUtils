@echo off
for /R %%G in (.) do (
  cd /D "%%~G"
  if exist .git (
    git fetch --tags --force
  )
  cd ..
)
