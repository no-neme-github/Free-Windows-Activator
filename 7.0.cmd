@echo off
rem �Ǘ��Ҍ����Ŏ��s����Ă��邩�m�F
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :continue
) else (
    echo �Ǘ��Ҍ����Ŏ��s���Ă��������B
    pause >nul
    exit /b
)
:continue
rem�@���s����Ă����̂Ŏ��ւ�����
echo create�@by noneme
echo Windows 11 pro Auto license Authentication system v6
echo �擪�̐�������͂��Ă��������B
echo 1.�����@���p�K��Ȃ�
echo 2.���C�Z���X�F�؂��n�߂�
echo 3.�C���X�g�[���p�v���_�N�g�L�[��\������
echo 4.�����F�؋@�\�ݒ�
set/p "Sub=>"
cls
if %Sub%==1 goto setumei
if %Sub%==2 goto hazime
if %Sub%==3 goto prokey  
if %Sub%==4 goto startup
goto error

:error
rem ����[
cls
echo �_���ł�!�F���ł��܂���!!!!�擪�̐���������������͂��Ă��������B
goto continue

:prokey
rem �v���_�N�g�L�[�\��
echo Windows7 Pro OS Key FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
echo Windows8 Pro OS Key NG4HW-VH26C-733KW-K6F98-J8CK4
echo Windows8.1��9 Pro OS Key GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
echo Windows 10 and 11 Pro OS Key W269N-WFGWX-YVC9B-4J6C9-T83GX
pause
exit

:setumei
rem �����\��
echo ���̃\�t�g��Nonemeuser���쐬����Windows��7�ȍ~��OS��F�؂��邽�߂�script�ł��B
echo KMS�F�؃V�X�e���𗘗p���Ă��܂��B
echo ���p�K��@���̃\�t�g�͂��ׂ�nonemeuser���쐬�����̂ŁA���쌠��nonemeuser�ɋA�҂��܂��B
echo ��{�I��OSS�Ȃ̂ŁA�ǂ�ǂ���ς��č���Ă����ł��B
echo ���Ӂ@���̃\�t�g��Pro�ł����F�؂ł��܂���B�Ή�����OS��windows7 windows8x windows10�ł�
echo�@�ȏ�ł��B
pause

:hazime
rem OS����
ver | find /i "Version 6.1." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN7
ver | find /i "Version 6.2." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN8
ver | find /i "Version 6.3." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN8.1
ver | find /i "Version 10.0." > nul
if %ERRORLEVEL% equ 0 GOTO :WIN10
goto :OTHER
 
:WIN7
echo ���̒[���� OS �� "Windows 7Pro" �ł����Hy/n
set/p "hanbetu=>"
if %hanbetu%==y goto win7pro
echo �����őI�����Ă��������B
goto sentaku
:WIN8
echo ���̒[���� OS �� "Windows 8Pro" �ł����Hy/n
set/p "hanbetu=>"
if %hanbetu%==y goto win8.1pro
echo �����őI�����Ă��������B
goto sentaku

:WIN8.1
echo ���̒[���� OS �� "Windows 8.1Pro" �ł����Hy/n
set/p "hanbetu=>"
if %hanbetu%==y goto win8.1pro
echo �����őI�����Ă��������B
goto sentaku
:WIN10
echo ���̒[���� OS �� "Windows 10Pro"�܂���"Windows 11Pro"�ł����Hy/n
set/p "hanbetu=>"
if %hanbetu%==y goto win10pro
echo �����őI�����Ă��������B
goto sentaku
 
:OTHER
echo.
echo ��Ή���OS�ł��B
pause
exit

:startup
rem startup�ɓo�^�@�폜
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ninsyou.bat" (
    goto sonzai
) else (
    goto nai
)

:
:sonzai
echo ���݂��܂����A�폜���܂����Hy/n
set/p "aaaa=>"
if %aaaa%==y goto kesu
goto mendokusai

:kesu
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
del ninsyou.bat
echo�@�폜���܂����B
timeout 2
exit

:nai
echo �쐬���܂����Hy/n
set/p "aaaa=>"
if %aaaa%==y goto sakuseisimasu
goto mendokusai

:mendokusai
cls
echo �����Ɠ��͂��Ă��������B
goto startup

:sakuseisimasu
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo cscript "C:\Windows\System32\slmgr.vbs" /ato > ninsyou.bat
echo �쐬���܂����B�@�N�����ɍ�����ʂ��o�܂����A�C�ɂ��Ȃ��ł��������B
timeout 3
exit

:sentaku
rem �蓮�I��
echo ���g����OS�͂Ȃ�ł����H�擪�̐�������͂��肢���܂��B
echo 1.winodws7 pro
echo 2.windows8 pro
echo 3.windows8.1 pro
echo 4.windows10 and 11 pro
set/p "Key=>"
if %Key%==1 goto win7pro
if %Key%==2 goto win8pro
if %Key%==3 goto win8.1pro
if %Key%==4 goto win10pro
goto e

:e
echo �������F���ł��܂���ł����B�����Ɗm���߂�
goto sentaku

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
rem Start
echo �v���_�N�g�L�[���폜���Ă��܂�...
cscript "C:\Windows\System32\slmgr.vbs" /upk
cls
echo �v���_�N�g�L�[���폜���Ă��܂�...
echo �v���_�N�g�L�[��ݒ肵�Ă��܂�...
cscript "C:\Windows\System32\slmgr.vbs" /ipk %lkey%
cls
echo �v���_�N�g�L�[���폜���Ă��܂�...
echo �v���_�N�g�L�[��ݒ肵�Ă��܂�...
echo �T�[�o�[��ݒ肵�Ă��܂�...
cscript "C:\Windows\System32\slmgr.vbs" /skms kms8.msguides.com
cls
echo �v���_�N�g�L�[���폜���Ă��܂�...
echo �v���_�N�g�L�[��ݒ肵�Ă��܂�...
echo �T�[�o�[��ݒ肵�Ă��܂�...
echo ���C�Z���X�F�؂����s���Ă��܂�...
cscript "C:\Windows\System32\slmgr.vbs" /ato
echo �������܂����B
echo ���łɖ���N�����ɔF�؂����s����@�\���t���܂����H���Ƃō폜���ł��܂��By/n
set/p "saigo=>"
if %saigo%==y goto startup
echo�@�����I�ɏI�����܂�...
timeout 10