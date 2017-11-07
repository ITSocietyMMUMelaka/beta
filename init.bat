@echo off
echo Initializing git hooks...
REM core.hooksPath is not supported by GitKraken yet
REM hooks must be copied to .git\hooks
REM git config core.hooksPath .githooks
copy .githooks\post-commit .git\hooks\
echo git hooks copied.