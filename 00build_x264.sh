basepath=$(cd `dirname $0`;pwd)

echo ${basepath}

cd ${basepath}/x264-master
pwd


# ./configure --prefix=${basepath}/x264_install --enable-static --disable-thread
./configure --enable-shared --enable-static --disable-thread
make 
make install
