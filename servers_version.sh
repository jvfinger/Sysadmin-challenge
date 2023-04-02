#!/usr/bin/env bash


echo "Please enter your filename:"
read filename
result=$filename

RELEASE=unknown
NOW="$(date +' %H:%M:%S:%3N %d/%m/%y ')"
HOST=$HOSTNAME
IP="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"
VERSION="$(uname -s -m -r -o -v)"


version=$( lsb_release -r | grep -oP "[0-9]+" | head -1 )
if lsb_release -d | grep -q "CentOS"; then
    RELEASE=centos$version
elif lsb_release -d | grep -q "Ubuntu"; then
    RELEASE=ubuntu$version
elif lsb_release -d | grep -q "Oracle"; then
    RELEASE=OracleLinux$version
fi

  echo  $NOW  $HOST  $IP  $VERSION  >  $result