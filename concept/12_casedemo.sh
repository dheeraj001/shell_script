#!/bin/bash

echo "Provide Your Option"
echo "a : Print current time"
echo "b : Print current contect"
echo "c : Print Current Working Directory"

read -p  "Enter your -: " choice

case $choice in
  a) 
     echo "Today Date is : ${date}" 
     echo "Ending ...."
     ;;
  b) ls;;
  c) pwd;;
  *) echo "Wrong option select"
esac  