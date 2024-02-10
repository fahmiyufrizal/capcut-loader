:: CapCut Loader
:: by fahmiyufrizal@2024
:: Modifikasi script ini tanpa menghilangkan credits!
:: Script ginian mau dicolong juga? lemah!

@echo off
title [github.com/fahmiyufrizal] Now Unloading CapCut, please wait....
taskkill /f /im "CapCut.exe"
taskkill /f /im parfait_crash_handler.exe

if not exist "C:\CapCut" echo [-] Please install CapCut first! & pause>nul
if not exist "%~dp0_Data_\Local" mkdir _Data_\Local
if not exist "%~dp0_Data_\Registry" mkdir _Data_\Registry
if not exist "%~dp0CapCut" mkdir "CapCut"

xcopy /s /y /f "C:\CapCut\*.*" "%~dp0CapCut"
xcopy /s /y /f "%localappdata%\CapCut" "%~dp0_Data_\Local"

RD /S /Q "%localappdata%\CapCut"
RD /S /Q "C:\CapCut"
mklink /J "%localappdata%\CapCut" "%~dp0_Data_\Local"
mklink /J "C:\CapCut" "%~dp0CapCut"
reg export HKEY_CURRENT_USER\Software\Bytedance "%~dp0_Data_\Registry\HKCU_CapCut.reg" /y
cls
echo [+] Gunakan "%~dp0launch_capcut.exe" untuk membuka CapCut di client!
echo.
echo [+] Script ini tersedia secara gratis dan tidak di-obfuscate
echo [+] Perubahan dapat dilakukan, namun jangan serta merta menghilangkan credits
echo [+] Anda dapat mendukung saya melalui donasi di bit.ly/danain_fahmiyufrizal
echo [+] github.com/fahmiyufrizal
pause>nul

