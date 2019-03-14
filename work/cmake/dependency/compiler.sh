wget "http://download.osgeo.org/geos/geos-3.7.1.tar.bz2"
tar xvzf geos-3.7.1.tar.bz2
cd geos-3.7.1
./configure --prefix=/Users/baidu/zhangsen/zhangtuo/work/cmake/dependency
make -j20
make isntall
