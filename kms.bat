@echo off
cd /d %~dp0

%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit

title --KMS��ݽű� https://v0v.bid--
MODE con: COLS=70 lines=15
color 0a


:begin
cls
echo.
echo.
echo     -- KMS ���� widows �� office ��ݽű� --
echo     -- �˽ű��� https://v0v.bid  �ṩ֧�� --
echo.
echo --[1]--���� widows ϵͳ��Windows 7��8��10��2008��2012��2016��
echo --[2]--���� office �����office 2010��2013��2016��
echo --[3]--�˳��ű�
echo.
echo.
choice /c 123 /n /m "��ѡ��1-3����"

echo %errorlevel%
if %errorlevel% == 1 goto set_1
if %errorlevel% == 2 goto set_2
if %errorlevel% == 3 goto end


::����widowsϵͳ
:set_1
cls
echo.
echo.
echo --��������KMS��������ַ��
echo.
echo --Ĭ�ϼ��������Ϊ https://v0v.bid
echo.
set/p kms=--Ĭ��ֱ�Ӱ��س���
if not defined kms set kms=kms.v0v.bid
echo.
echo --���óɹ����������������ʼ���
pause>nul
echo.
echo --���ڼ�����Ժ󡣡�����
slmgr /skms %kms%
slmgr /ato
ping localhost -n 3 > nul
slmgr /dlv
echo.
echo --��������ɡ��缤��ʧ�������https://v0v.bid��
pause>nul
goto begin


::����office���
:set_2
cls
echo.
echo.
echo --��������KMS��������ַ��
echo.
echo --Ĭ�ϼ��������Ϊ https://v0v.bid
echo.
set/p kms=--Ĭ��ֱ�Ӱ��س���
if not defined kms set kms=kms.v0v.bid
ping localhost -n 3 > nul
cls
echo.
echo.
echo --����������ȷ��office��װĿ¼��
echo.
echo --Ĭ��Ϊ��C:\Program Files (x86)\Microsoft Office\Office14\
echo.
set/p url=--Ĭ��ֱ�Ӱ��س���
if not defined url set url=C:\Program Files (x86)\Microsoft Office\Office14
echo.
echo --���óɹ����������������ʼ���
pause>nul
echo.
echo --���ڼ�����Ժ󡣡�����
cd %url%
cscript ospp.vbs /sethst:%kms%
ping localhost -n 3 > nul
cscript ospp.vbs /act
echo.
echo --��������ɡ��缤��ʧ�������https://v0v.bid��
echo.
pause>nul
goto begin


::�رսű�
:end
exit
