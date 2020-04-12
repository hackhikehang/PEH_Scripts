#!/bin/bash

if [ "$1" == "" ]
then
$network = [ `ifconfig | grep "inet " -m 1 | cut -d " " -f 10 | cut -d . -f 1-3` ] ;
#echo "You forgot an IP address!"
#echo ""
#echo "Using : $network"
#else
#$network = $1
fi
#for ip in `seq 1 254`; do
#ping -c 1 $network.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
#done

echo $network
