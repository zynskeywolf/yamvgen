#!/bin/bash
if [ $(id -u) -ne 0 ];then echo "You currently don't have enough power to access system directories. Please be root.";exit 1;fi
rm -fv /usr/bin/yamvgen*
rm -rfv /etc/yamvgen
rm -rfv /usr/share/yamvgen
rm -rfv /usr/share/doc/yamvgen
