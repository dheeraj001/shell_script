#!/bin/bash

FreeMemory=$(free -mt | grep "Total"|awk '{ print $4}')
ThresHold=3000

if [[ $FreeMemory -le $ThresHold ]]
then 
  echo "Warning !!, Ram Below thresold take nesscary action"
else
  echo "Free Ram Avilable"
fi    

