#!/bin/bash

declare -A myArray

myArray=( [name]="Dheeraj Negi" [age]=10 [work]="Devops Enginner" )

echo "My name is ${myArray[name]}"
echo "My profession is ${myArray[work]}"

