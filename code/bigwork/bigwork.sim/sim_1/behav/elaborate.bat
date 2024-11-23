@echo off
set xv_path=E:\\szlj\\Xilix1\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 622a872f3c3a4d00872c4c7956adbb10 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_3 -L unisims_ver -L unimacro_ver -L secureip --snapshot MP3_tb_behav xil_defaultlib.MP3_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
