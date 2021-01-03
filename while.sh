#!/bin/bash

# while [ 조건문 ]
# do
# 	명령문
# done

lists=($(ls))
num=${#lists[@]}
index=0
cur_dir=$(pwd)

echo size $num

while [ $index -lt $num ]
do
	echo $index $cur_dir/${lists[$index]}
	index=`expr $index + 1`
done

