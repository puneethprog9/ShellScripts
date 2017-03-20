#!/bin/bash

i=1

for user in `awk -F: '{print $1}' /etc/passwd`
do
   
   echo $((i++)) $user
done
