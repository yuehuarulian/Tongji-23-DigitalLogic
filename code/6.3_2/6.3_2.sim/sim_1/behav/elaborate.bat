@echo off
set xv_path=E:\\szlj\\Xilix1\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 173bdda44a314cc098aa1c5fdd39ec96 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot display7_tb_behav xil_defaultlib.display7_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
