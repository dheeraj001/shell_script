#!/bin/bash

FileSystem=$(df -h |grep -Ev "Filesystem|tmpfs"|grep "shell-script" | awk 'NR==1 { print $5}'|tr -d %)
TH=70

if [[ $FileSystem -lt $TH ]]
then 
  echo "File system Utization Below Threshold"
else 
  echo "File system Utization Above Threshold"
fi    