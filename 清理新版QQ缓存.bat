@ECHO OFF
echo If Chinese characters are garbled, please switch the text encoding.
echo This does not affect the script function.
ECHO ��������ǰ���˳�QQ...
ECHO ��������QQntĬ�ϰ�װλ�õ�ͼƬ����Ƶ����...
ECHO �ⲻ��Ӱ�����������¼

echo ����ȫ��QQ���ļ�������ʱ�ļ�..
dir "%userprofile%\Documents\Tencent Files\"   /a:d /b |findstr /r "^[0-9]*$"    >%userprofile%\qqcleaner.txt

echo ����ʱ�ļ���ȡ�ļ����б���ɾ���б��еĻ���..
for /f %%i in (%userprofile%\qqcleaner.txt) do (
ECHO ��������QQ %%i �Ļ���...
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

ECHO ������ʱ�ļ�...
del %userprofile%\qqcleaner.txt  /f /q 
del %userprofile%\tmp.txt /f /q 
echo �������!
PAUSE