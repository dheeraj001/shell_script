#!/bin/bash

read -p "Enter you marks -: " marks

if [[ $marks -ge 80 ]]
then
  echo "1st Division"
elif [[ $marks -ge 60  ]]
then
  echo "2nd Division"
elif [[ $marks -ge 40 ]]
then 
  echo "3rd Divison"
else 
  echo "Work Hard Next time"  
fi  