#!/bin/bash
echo "IP please?"
read ip
OIFS="$IFS"
IFS="."
ip=($ip)
IFS=$OIFS
[[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ &&  ${IP[0]} -le 255 && ${IP[1]} -le 255 && ${IP[2]} -le 255 && ${IP[3]} -le 255 ]] &&  echo "ip is valid" ||  echo "ip is not valid" 

