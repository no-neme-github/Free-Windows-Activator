@echo off
rem 管理者権限で実行されているか確認
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :continue
) else (
    echo 管理者権限で実行してください。
    pause >nul
    exit /b
)
:continue
rem　実行されていたので次へすすむ
echo create　by noneme
echo Windows 11 pro Auto license Authentication system v6
echo 先頭の数字を入力してください。
echo 1.説明　利用規約など
echo 2.ライセンス認証を始める
echo 3.インストール用プロダクトキーを表示する
echo 4.自動認証機能設定
set/p "Sub=>"
cls
if %Sub%==1 goto setumei
if %Sub%==2 goto hazime
if %Sub%==3 goto prokey  
if %Sub%==4 goto startup
goto error

:error
rem えらー
cls
echo ダメです!認識できません!!!!先頭の数字をしっかり入力してください。
goto continue

:prokey
rem プロダクトキー表示
echo Windows7 Pro OS Key FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
echo Windows8 Pro OS Key NG4HW-VH26C-733KW-K6F98-J8CK4
echo Windows8.1＆9 Pro OS Key GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
echo Windows 10 and 11 Pro OS Key W269N-WFGWX-YVC9B-4J6C9-T83GX
pause
exit

:setumei
rem 説明表示
echo このソフトはNonemeuserが作成したWindowsの7以降のOSを認証するためのscriptです。
echo KMS認証システムを利用しています。
echo 利用規約　このソフトはすべてnonemeuserが作成したので、著作権はnonemeuserに帰還します。
echo 基本的にOSSなので、どんどん改変して作っていいです。
echo 注意　このソフトはPro版しか認証できません。対応するOSはwindows7 windows8x windows10です
echo　以上です。
pause

:hazime
rem OS判別
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
echo この端末の OS は "Windows 7Pro" ですか？y/n
set/p "hanbetu=>"
if %hanbetu%==y goto win7pro
echo 自分で選択してください。
goto sentaku
:WIN8
echo この端末の OS は "Windows 8Pro" ですか？y/n
set/p "hanbetu=>"
if %hanbetu%==y goto win8.1pro
echo 自分で選択してください。
goto sentaku

:WIN8.1
echo この端末の OS は "Windows 8.1Pro" ですか？y/n
set/p "hanbetu=>"
if %hanbetu%==y goto win8.1pro
echo 自分で選択してください。
goto sentaku
:WIN10
echo この端末の OS は "Windows 10Pro"または"Windows 11Pro"ですか？y/n
set/p "hanbetu=>"
if %hanbetu%==y goto win10pro
echo 自分で選択してください。
goto sentaku
 
:OTHER
echo.
echo 非対応のOSです。
pause
exit

:startup
rem startupに登録　削除
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ninsyou.bat" (
    goto sonzai
) else (
    goto nai
)

:
:sonzai
echo 存在しますが、削除しますか？y/n
set/p "aaaa=>"
if %aaaa%==y goto kesu
goto mendokusai

:kesu
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
del ninsyou.bat
echo　削除しました。
timeout 2
exit

:nai
echo 作成しますか？y/n
set/p "aaaa=>"
if %aaaa%==y goto sakuseisimasu
goto mendokusai

:mendokusai
cls
echo ちゃんと入力してください。
goto startup

:sakuseisimasu
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo cscript "C:\Windows\System32\slmgr.vbs" /ato > ninsyou.bat
echo 作成しました。　起動時に黒い画面が出ますが、気にしないでください。
timeout 3
exit

:sentaku
rem 手動選択
echo お使いのOSはなんですか？先頭の数字を入力お願いします。
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
echo 文字が認識できませんでした。ちゃんと確かめて
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
echo プロダクトキーを削除しています...
cscript "C:\Windows\System32\slmgr.vbs" /upk
cls
echo プロダクトキーを削除しています...
echo プロダクトキーを設定しています...
cscript "C:\Windows\System32\slmgr.vbs" /ipk %lkey%
cls
echo プロダクトキーを削除しています...
echo プロダクトキーを設定しています...
echo サーバーを設定しています...
cscript "C:\Windows\System32\slmgr.vbs" /skms kms8.msguides.com
cls
echo プロダクトキーを削除しています...
echo プロダクトキーを設定しています...
echo サーバーを設定しています...
echo ライセンス認証を実行しています...
cscript "C:\Windows\System32\slmgr.vbs" /ato
echo 完了しました。
echo ついでに毎回起動時に認証を実行する機能も付けますか？あとで削除もできます。y/n
set/p "saigo=>"
if %saigo%==y goto startup
echo　自動的に終了します...
timeout 10