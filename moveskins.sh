#!/bin/bash 
pacmd set-default-sink $1
pacmd list-sink-inputs | grep index | while read line
do
pacmd move-sink-input `echo $line | cut -f2 -d' '` $1

done
