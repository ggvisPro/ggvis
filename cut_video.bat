@echo off
set /p input_video_path=�����Ƶ�Ͻ�����
set /p start_time=�����뿪ʼʱ��(Ӣ���ַ�hh:mm:ss)��
set /p end_time=���������ʱ��(Ӣ���ַ�hh:mm:ss)��
set /p new_name=�����������ƣ���Ϊ�գ����ɡ�cut_ԭ������

for %%I in ("%input_video_path%") do (
    set "extension=%%~xI"
    set "parent_folder=%%~dpI"
    set "original_name=%%~nI"
)

if "%new_name%"=="" (
    set "new_name=cut_%original_name%"
)

ffmpeg -i "%input_video_path%" -ss %start_time% -to %end_time% -c copy "%parent_folder%%new_name%%extension%" >nul 2>&1

echo ��Ƶ�ü���ɣ�
pause