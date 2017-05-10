#!/bin/bash

for i in `seq 1 $1`; do
 
echo $i>time.txt
sleep 1
echo -en "$(head -n1 time.txt) \r"
done
