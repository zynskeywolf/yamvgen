#!/bin/bash
if [ $(id -u) -ne 0 ];then echo "You currently don't have enough power to access system directories. Please be root.";exit 1;fi
SRC=$(dirname $(readlink -f $0))
mkdir -pv /usr/bin
cp -fv $SRC/bin/* /usr/bin
chmod +x -v /usr/bin/yamvgen*
mkdir -pv /etc/yamvgen
cp -fv $SRC/config/* /etc/yamvgen
mkdir -pv /usr/share/yamvgen
cp -fv $SRC/data/* /usr/share/yamvgen
mkdir -pv /usr/share/doc/yamvgen
cp -fv $SRC/docs/* /usr/share/doc/yamvgen
