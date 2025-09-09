#!/bin/bash 

while read var 
do 
  echo "Names are: $var"
done < names.txt  