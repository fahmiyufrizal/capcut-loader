@echo off
mklink /J "%localappdata%\CapCut" "%~dp0_Data_\Local"
mklink /J "C:\CapCut" "%~dp0CapCut"
reg import "%~dp0_Data_\Registry\HKCU_CapCut.reg"
start "" "%~dp0CapCut\CapCut.exe" --src1