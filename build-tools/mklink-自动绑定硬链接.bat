@echo off
cls

:Check
::ִ��ǰ���
if exist youlong_online/data (
	color 02
	echo ���ҵ�Youlong_Online/data�ͻ��˲�Ʒ�⣡
) else (
	color 04
	echo ���Ҳ���Youlong_Online!  �ͻ��˲��ڵ�ǰĿ¼��
	goto ErrorEnding
)
echo.
if exist ../setting_client (
	color 02
	echo ���ҵ�youlong_scheme_vn/gameres�߻��⣡
) else (
	color 04
	echo ���Ҳ���youlong_scheme_vn�߻���, �뽫youlong_online��youlong_scheme_vn����ͬһ��Ŀ¼��
	goto ErrorEnding
)

:: Դ����
if exist ../youlong (
	color 02
	echo ���ҵ�youlong_code_vn/client�ͻ��˳���⣡
	cd run_helper
	junction ../../youlong/Assets/Resources/setting_client ../../setting_client
	junction ../../youlong/Assets/data ../youlong_online/data
	echo.
	echo �ͻ��˳������󶨳ɹ���
) else (
	color 02
	echo ���Ҳ���youlong_code_vn�ͻ��˳����, ����
)

echo.


echo. 
echo ##########################
echo ### ȫ��Ŀ¼Ӳ���ӳɹ��� ###
echo ##########################

goto HappyEnding


:ErrorEnding
echo. 
echo ##########################
echo ### ���������ˣ���ȷ�����youlong_scheme_vn��youlong_product_vn����ͬһĿ¼�¡� ###
echo ##########################
ping 127.0.0.1 -n 5 >nul
exit

:HappyEnding
::����, �ȴ�5��
echo.
::ping 127.0.0.1 -n 6 >nul
::exit
pause