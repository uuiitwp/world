@echo off
 setlocal enabledelayedexpansion
 set "year=%date:~0,4%"
 set "month=%date:~5,2%"
 set "day=%date:~8,2%"
 set "hour_ten=%time:~0,1%"
 set "hour_one=%time:~1,1%"
 set "minute=%time:~3,2%"
 set "second=%time:~6,2%"
 if "%hour_ten%" == " " (
     set DateTime=%year%年%month%月%day%日0%hour_one%时%minute%分%second%秒
 ) else (
     set DateTime=%year%年%month%月%day%日%hour_ten%%hour_one%时%minute%分%second%秒
 )
 set commit=%DateTime%自动备份
 git add .
 git commit -m "%commit%"
 git push --force