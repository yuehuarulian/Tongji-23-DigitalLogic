@echo off
set bin_path=E:\\szlj\\modelsim_dlx_10.3a\\win32pe
call %bin_path%/vsim  -c -do "do {Regfiles_tb_compile.do}" -l compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
