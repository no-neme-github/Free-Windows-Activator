@echo off
chcp 932
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :continue
) else (
    echo 管理者権限で実行してください。
    pause >nul
    exit /b
)
:continue
echo create　by noneme
echo Windows 11 pro Auto license　Authentication system v1.1
echo 実行しています...
echo ダイアログが出てくるので、OKを手動でクリックしてください。
echo お使いのOSはなんですか？先頭の数字を入力お願いします。
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
文字が認識できませんでした。半角数字で入力してください。
echo お使いのOSはなんですか？先頭の数字を入力お願いします。
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
echo プロダクトキーを削除しています...
slmgr /ipk %lkey%
slmgr /skms kms8.msguides.com
slmgr /ato
pause 完了しました。　10秒後に自動的に閉じます。
timeout 10
