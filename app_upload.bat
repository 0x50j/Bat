@echo off

:start
echo.请输入APP的SiteID：
set /p appid=

::定义新的app存放目录
set newapp=C:\Users\Administrator\Desktop\newapp\%appid%.ipa
::定义站点目录
set web=D:\WWWROOT\ssssmart.com\%appid%

::删除旧的备份文件
del "%web%\bak.ipa"
::生成新的备份文件
ren "%web%\app.ipa" bak.ipa
::将新的app复制到站点目录下
xcopy %newapp% %web%
::重命名app文件
ren "%web%\%appid%.ipa" app.ipa

goto start