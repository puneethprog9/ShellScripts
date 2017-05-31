#!/bin/bash

#syntax check

if [[ $# != 1 || $1 == "-h" ]]; then
   echo "usage: $0 /etc/passwd"
   exit 1
fi

#Read command line arguments in to variable

file=$1
parse_prompt(){
  until [[ "${answer}" =~ yes|no ]]; do
    echo "Do you wish to parse $(file) (yes/no)"
    read answer
  done
  if [[ ${answer} =~ no ]]; then
   echo "exiting...."
   exit 0
 fi 
}

parse_prompt


sort -t ':' -k 3 -n $file | while read -r line; do
   user=$(echo $line | cut -f '1' -d ':')
    uid=$(echo $line | cut -f '3' -d ':')
   home=$(echo $line | cut -f '6' -d ':')
   echo "User ${user} has uid ${uid} and home directory ${home}"
   if [[ $uid =~ [0-9]{3} ]]; then echo "This user has a uid with at least 3 digits"; fi
done
