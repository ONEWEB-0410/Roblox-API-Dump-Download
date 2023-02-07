@echo off & setlocal


setlocal EnableDelayedExpansion

set multiLine=^

Running! ^
  


echo !multiLine!


Set _a=%
Set _b=%userprofile%

curl.exe -o %_a%%_b%%_a%\Downloads\file.txt http://setup.roblox.com/DeployHistory.txt 


FindStr /I  "Studio64" "%_a%%_b%%_a%\Downloads\file.txt" > "%_a%%_b%%_a%\Downloads\file4.txt"


For /F "UseBackQ Delims==" %%A In ("%_a%%_b%%_a%\Downloads\file4.txt") Do Set "lastline3=%%A" 

del %_a%%_b%%_a%\Downloads\file.txt

del %_a%%_b%%_a%\Downloads\file4.txt


:echo %lastline3%
echo %lastline3:~21,16%


curl.exe -o %_a%%_b%%_a%\Downloads\api-dump.json https://setup.rbxcdn.com/version-%lastline3:~21,16%-API-Dump.json



pause
