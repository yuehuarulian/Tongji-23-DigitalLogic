@echo off
set xv_path=E:\\szlj\\Xilix1\\Vivado\\2016.2\\bin
call %xv_path%/xsim display7_tb_behav -key {Behavioral:sim_1:Functional:display7_tb} -tclbatch display7_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
