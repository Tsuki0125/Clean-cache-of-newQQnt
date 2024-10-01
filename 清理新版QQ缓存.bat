@ECHO OFF
echo If Chinese characters are garbled, please switch the text encoding.
echo This does not affect the script function.
ECHO 建议运行前先退出QQ...
ECHO 即将清理QQnt默认安装位置的图片和视频缓存...
ECHO 这不会影响文字聊天记录

echo 保存全部QQ号文件名到临时文件..
dir "%userprofile%\Documents\Tencent Files\"   /a:d /b |findstr /r "^[0-9]*$"    >%userprofile%\qqcleaner.txt

echo 从临时文件读取文件夹列表并且删除列表中的缓存..
for /f %%i in (%userprofile%\qqcleaner.txt) do (
ECHO 正在清理QQ %%i 的缓存...
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Pic\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Pic\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Video\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Video\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Emoji\emoji-recv\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Emoji\emoji-recv\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\File\Thumb\     /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do del "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\File\Thumb\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\dataline\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\dataline\%%j" /s /q 
)

ECHO 清理临时文件...
del %userprofile%\qqcleaner.txt  /f /q 
del %userprofile%\tmp.txt /f /q 
echo 清理完成!
PAUSE