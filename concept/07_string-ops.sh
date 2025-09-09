#!/bin/bash

myVar="Hey Hero, How are you?"

myVarLength=${#myVar}

# Length of Sting 

echo "The Length of variable is: $myVarLength"

# To Convert in small case 

echo "Variable in small case ${myVar,,}"

# To Convert in Upper case 

echo "${myVar^^}"

# To Replace a variable 

NewVar=${myVar/Hero/dheeraj}

echo "Varible after slice ---: ${NewVar}"

# To slice a variable 

varSlice=${myVar:4:5}

echo "${varSlice}"