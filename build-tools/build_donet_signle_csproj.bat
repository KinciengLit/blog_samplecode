@echo off
echo ****************************************
echo            �Զ�����΢���ļ�
echo                         
echo                 	for wd visual studio project
echo					by qingqing.zhao@foxmail.com
echo ****************************************
title �Զ�����΢���ļ�
color 0a
rem ʹ�÷�����1.��bat���ں�Դ����ͬ����Ŀ¼,�������޸�·�� 2.ִ��bat
cd %~dp0 
echo project path %~dp0

rem hh�������ȡСʱ���ܳ��ֿո������(�賿1�㵽����9��%time:~0,2%������ֿո�)
set h=%time:~0,2% 
set hh=%h: =0%
set log_file=%~dp0\version_internal\buildlog_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%hh%%time:~3,2%.log
set save_path=%~dp0\version_internal\

set logicmodule_sln=%~dp0\ylwd\ylwd.sln
set logicmodule_files=%~dp0\ylwd\WdHelper\bin\Release\AssistApp.exe

rem todo please update visual studio install path
cd /d c:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\
rem document https://msdn.microsoft.com/zh-cn/library/xee0c8y7.aspx

echo.
echo *** start build ......***


devenv %logicmodule_sln% /Rebuild Release /project "WdHelper\WdHelper.csproj" /projectconfig Release /Out %log_file% 
copy %logicmodule_files% %save_path%\AssistApp.exe
echo copy %logicmodule_files% to %save_path%\AssistApp.exe

echo ***************************************
echo          auto build complete!
echo ***************************************
echo.

pause                                                                                                                            