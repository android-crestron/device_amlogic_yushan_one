repo manifest -o $1/yushan_manifest.xml -r
VERSION=Yushan.2Gd.32Ge.256Ks_00_00_03
TAG_NAME=YUSHAN_20150817
BUILD_TIME=`date`
echo "VERSION:$VERSION" > $1/yushan_version.txt
echo "TAG NAME:$TAG_NAME" >> $1/yushan_version.txt
echo "BUILD TIME:$BUILD_TIME" >> $1/yushan_version.txt
