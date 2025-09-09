#!/bin/bash

read -p "Enter site name :- " site

ping -c 1 $site > /dev/null
#sleep 5s

if [[ $? -eq 0 ]]
then
  echo "Susscully connected to $site"
else 
  echo "UnSuccfull connection to $site"  
fi  