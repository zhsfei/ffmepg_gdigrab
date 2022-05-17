echo off
set CUR_YYYY=%date:~0,4%
set CUR_MM=%date:~5,2%
set CUR_DD=%date:~8,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%

set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%_%CUR_HH%%CUR_NN%%CUR_SS%


rem cd ffmpeg_install\bin
rem echo %SUBFILENAME%.mkv
mkdir out
rem ffmpeg_install\bin\ffmpeg -f gdigrab -framerate 30 -i desktop out/%SUBFILENAME%.mkv
rem -video_size 1920x1080
..\FFmpeg\ffmpeg  -rtbufsize 150M -f gdigrab -framerate 30 -offset_x 0 -offset_y 0  -draw_mouse 1  -i desktop -c:v libx264 -r 30 -video_size 1920x1080 -preset ultrafast -tune zerolatency -crf 28 -pix_fmt yuv420p -movflags +faststart -y out/%SUBFILENAME%.mkv
rem ffmpeg  -rtbufsize 150M -f gdigrab -framerate 30 -offset_x 0 -offset_y 0  -draw_mouse 1 -video_size 1920x1080 -i desktop -c:v libx264 -r 30 -pix_fmt yuv420p -movflags +faststart -y out/%SUBFILENAME%.mkv
