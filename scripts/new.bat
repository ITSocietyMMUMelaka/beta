@echo off
if "%1" == "" goto help
if "%2" == "" goto help

hugo new %1/%2/index.md

exit /b

:help
echo.
echo USAGE: %~nx0 section slug
echo.
echo Create a new hugo content as
echo    /^<SECTION^>/^<TITLE-SLUG^>/index.md
echo.
echo Slugify:
echo 1. Replace all spaces with '-' 
echo 2. Multiple spaces will only have one '-'
echo 3. No '-' at the start and end of the slug
echo 4. Convert everything to lowercase
echo.
echo    Example:  "  New  Site   " becomes "new-site"

exit /b