@echo off
chcp 932
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :continue
) else (
    echo �Ǘ��Ҍ����Ŏ��s���Ă��������B
    pause >nul
    exit /b
)
:continue
echo create�@by noneme
echo Windows 11 pro Auto license�@Authentication system v1.1
echo ���s���Ă��܂�...
echo �_�C�A���O���o�Ă���̂ŁAOK���蓮�ŃN���b�N���Ă��������B
echo ���g����OS�͂Ȃ�ł����H�擪�̐�������͂��肢���܂��B
echo 1.winodws7 pro
echo 2.windows8 pro
echo 3.windows8.1 pro
echo 4.windows10 and 11 pro
set/p "Key=>"
if %Key%==1 goto win7pro
if %Key%=2 goto win8pro
if %Key%==3 goto win8.1pro
if %Key%==4 goto win10pro
goto e

:e
�������F���ł��܂���ł����B���p�����œ��͂��Ă��������B
echo ���g����OS�͂Ȃ�ł����H�擪�̐�������͂��肢���܂��B
echo 1.winodws7 pro
echo 2.windows8 pro
echo 3.windows8.1 pro
echo 4.windows10 and 11 pro
set/p "Key=>"
if %Key%==1 goto win7pro
if %Key%=2 goto win8pro
if %Key%==3 goto win8.1pro
if %Key%==4 goto win10pro
goto e

:win7pro
set lkey=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
goto act

:win8pro
set lkey=NG4HW-VH26C-733KW-K6F98-J8CK4
goto act

:win8.1pro
set lkey=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
goto act

:win10pro
set lkey=W269N-WFGWX-YVC9B-4J6C9-T83GX
goto act

:act
slmgr /upk
echo �v���_�N�g�L�[���폜���Ă��܂�...
slmgr /ipk %lkey%
slmgr /skms kms8.msguides.com
slmgr /ato
pause �������܂����B�@10�b��Ɏ����I�ɕ��܂��B
timeout 10
