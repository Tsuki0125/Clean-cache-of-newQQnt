@ECHO OFF
echo "if Chinese text encoding error occurs，pls switch the text encoding format and try again."
echo "In addition, text encoding errors won't affect program functionality."

ECHO 即将清理QQnt默认安装位置的图片和视频缓存...
ECHO 这不会影响文字聊天记录.

echo 保存全部QQ号文件名到临时文件.
dir "%userprofile%\Documents\Tencent Files\"   /a:d /b |findstr /r "^[0-9]*$"    >%userprofile%\1172970635.txt

echo 从临时文件读取文件夹列表并且删除列表中的缓存..
for /f %%i in (%userprofile%\1172970635.txt) do (
ECHO 正在清理QQ %%i 的缓存...
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Pic\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Pic\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Video\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Video\%%j" /s /q 
)

ECHO 清理临时文件...
del %userprofile%\1172970635.txt /f /q 
del %userprofile%\tmp.txt /f /q 
echo 清理完成!
PAUSE