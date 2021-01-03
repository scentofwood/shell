#!/bin/bash

# for 변수 in 변수값1 변수값2 ...
# do
#	명령문
# done

cur_dir=$(pwd)
for files in $(ls)
do
	echo $cur_dir/$files
done

