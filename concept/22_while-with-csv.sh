#!/bin/bash

while IFS="," read name
do 
  echo "name $name"
done < ./test.csv
