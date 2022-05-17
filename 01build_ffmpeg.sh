basepath=$(cd `dirname $0`;pwd)

echo ${basepath}

cd ${basepath}/x264-master
pwd



cd ${basepath}/ffmpeg
pwd


./configure --prefix=${basepath}/ffmpeg_install --enable-static --enable-libx264 --enable-gpl --disable-shared --extra-cflags=-I/usr/local/include --extra-ldflags=-L/usr/local/lib

make

make install
