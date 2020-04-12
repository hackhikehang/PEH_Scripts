#!/bin/bash

if [ "$1" == "" ]
then
  ip_network="$(ip route | grep "default" | cut -d " " -f 3 | cut -d . -f 1-3)"
  echo "You forgot an IP address!  Using your default route of $ip_network."
else
  ip_network="$1"
fi

for ip in `seq 1 254`; do
  ping -c 1 $ip_network.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done


