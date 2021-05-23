@chcp 65001
@echo off&SetLocal EnableDelayedExpansion
echo,
echo,=====
echo,SPDX-License-Identifier: (GPL-2.0+ OR MIT):
echo,
echo,!!! THIS IS NOT GUARANTEED TO WORK !!!
echo,
echo,Copyright (c) 2018-2021, SayCV
echo,=====
echo,

:: =====
cd /d "%~dp0"
set "TOPDIR=%cd:\=/%"
title "%~n0"
:: =====

call powershell  -file %~n0.ps1
if not %errorlevel% == 0 pause && EXIT 1

:: =========================
DELAY 3 2>nul || ping -n 3 127.0.0.1>nul
EXIT 0
