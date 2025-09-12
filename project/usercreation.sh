#!/bin/bash

if [[ "${UID}" -ne 0 ]]
then 
  echo "Script Needs to be run as root user"
  exit 1 
fi 

if [[ "${#}" -eq 0 ]]
then
   echo "Atleat Proivde one argument example - username and description"
   echo "For example - Jhon and Test Admistrator"
fi 

UserName="$1"
shift
Description="$@"
Password="$(date +%s%N)"

echo "UserName -: $UserName Description:- $Description Passwd:- $Password"

useradd -c "$Description" -m $UserName

if [[ $? -ne 0 ]]
then 
   echo "Account Cannot be created Check with systemc admin"
   exit 1 
fi 

echo $Password | passwd --stdin $UserName | 

if [[ $? -ne 0 ]]
then 
   echo "Password Cannot be set"
   exit 1
fi 

passwd -e $UserName

echo "UserName -: $UserName Description:- $Description Passwd:- $Password"