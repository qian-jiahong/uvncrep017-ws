#!/bin/sh
#######
#Filename: MakePackage
#Location: (package folder)
#Author: Fafakos Panayiotis - Greece
#Licence: GNU-GPL
#######
# Version info
# v1.00 - 20101015 - Initial release
#######

ThisDir=`pwd`
ThisVersion=`basename $ThisDir`

echo Cleaning up
make clean

echo This dir is $ThisDir
echo This version is $ThisVersion
echo Trying to create package in parent folder

cd ..
tar -cvf $ThisVersion.tar $ThisVersion
gzip $ThisVersion.tar

echo Please check package $ThisVersion.tar.gr


