#!/bin/bash
#$Revision:001$
#$Tuesday 09 September 2025 05:43:14 PM IST$
#Check the Folder/filesystem exist

Path="/home/dheeraj/demo/project/"
FileSize="$(find $Path -type f -size +20M)"

ArchievePath="$Path/archieve"
if [[ ! -d $Path ]]
then
  echo "Required Path not exist : $Path"
  exit 1
fi  

if [[ ! -d $ArchievePath ]]
then 
  mkdir -p $ArchievePath
fi  

for file in $FileSize
do 
  echo "[ $(date)] archieing $file ==> $ArchievePath"
  gzip $file || exit 1
  mv $file.gz $ArchievePath || exit 1
done  

