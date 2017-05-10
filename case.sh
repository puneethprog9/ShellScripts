#!/bin/bash

echo -n "print message?"
valid=0
while 
[ $valid==0 ]
do
  read ans
  case $ans in
  yes|YES|y|Y ) echo will print the meesage
                echo The Message
                valid=1
                ;;
  [nN][oO] ) echo will Not print the message
             valid=1
              ;;
  *       ) echo yes or No of some form please ;;
  esac
done
