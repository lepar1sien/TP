#!/bin/bash
#This is a comment
pwd
whoami
input_dir=$1
output_dir=$2
array=()
for elem in $(find $input_dir -type f)
do
sudo cp $elem "$output_dir$(date +%Y%m%d%H%M%S%s%N)_$(basename "$elem")"
done

