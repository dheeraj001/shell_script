#!/bin/bash

# Creating a array and using it 

myArray=( 1 20 50.5 dheeraj "Devops Enginner" )

echo "All the value in array are ${myArray[*]}"

echo "The value at 3rd index is ${myArray[3]}"

# How to find length of Array 

echo "The length of array ${#myArray[*]}"

# Print the array from index 2 

echo "The value after 2nd index ${myArray[*]:2:3}"

#update array 

myArray+=( 20 66 Yo )

echo "New update Array ${myArray[*]}"