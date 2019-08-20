@echo off

:start
tasklist > tl.txt

find "QQ.exe" tl.txt

if %errorlevel% equ 0 (
	echo Program Is OK !
) else (
	echo Start Program Now !
	set mydate=%DATE:~0,10%
	echo Program Stop is %mydate% >> log.txt
	start "" "C:\Program Files\Internet Explorer\iexplore.exe"
) 
goto start