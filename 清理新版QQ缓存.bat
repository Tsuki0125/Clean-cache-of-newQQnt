@ECHO OFF
echo "if Chinese text encoding error occurs��pls switch the text encoding format and try again."
echo "In addition, text encoding errors won't affect program functionality."

ECHO ��������QQntĬ�ϰ�װλ�õ�ͼƬ����Ƶ����...
ECHO �ⲻ��Ӱ�����������¼.

echo ����ȫ��QQ���ļ�������ʱ�ļ�.
dir "%userprofile%\Documents\Tencent Files\"   /a:d /b |findstr /r "^[0-9]*$"    >%userprofile%\1172970635.txt

echo ����ʱ�ļ���ȡ�ļ����б���ɾ���б��еĻ���..
for /f %%i in (%userprofile%\1172970635.txt) do (
ECHO ��������QQ %%i �Ļ���...
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Pic\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Pic\%%j" /s /q 
dir %userprofile%\Documents\"Tencent Files"\%%i\nt_qq\nt_data\Video\    /a:d /b  >%userprofile%\tmp.txt
for /f %%j in (%userprofile%\tmp.txt) do rd "%userprofile%\Documents\Tencent Files\%%i\nt_qq\nt_data\Video\%%j" /s /q 
)

ECHO ������ʱ�ļ�...
del %userprofile%\1172970635.txt /f /q 
del %userprofile%\tmp.txt /f /q 
echo �������!
PAUSE