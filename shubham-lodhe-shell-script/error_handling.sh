#!/bin/bash

create_dir() {
    mkdir demo
}

if ! create_dir 
then 
   echo "Directory alreday exist"
   exit 1
fi 

echo "Run bleow code"