#!/bin/bash

if [[ $# -eq 0 ]]
then 
   exit 1
fi   

echo "First Argument is $1"
echo "Second Argument is $2"

echo "All the Argument are $@"
echo "Number of Argument are $#"

for filename in $@
do 
  echo "FileName $filename"
done  