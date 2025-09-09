#!/bin/bash

read -p "Enter your age: " age
read -p "Enter your nationalilty: " nation

if [[ $age -ge 18 ]] && [[ $nation == "India" ]]
then 
  echo "You can vote"
else 
  echo "You are not eligiable to vote"
fi     