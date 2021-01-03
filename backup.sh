#!/bin/bash

# tar [옵션]
#   -x : 묶음을 해제
#   -c : 파일을 묶음
#   -v : 묶음/해제 과정을 화면에 표시
#   -z : gunzip을 사용
#   -f : 파일 이름을 지정
# tar -cvzf [압축된 파일 이름] [압축할 파일이나 폴더명] : 압축시 주로 사용하는 옵션
# tar -xvzf [압축 해제할 압축 아카이브 이름] : 압축을 풀 때 주로 사용하는 옵션

if [ -Z $1 ] || [ -Z $2 ]
then
	echo usage: $0 source_dir target_dir
else
	SRCDIR=$1
	DSTDIR=$2
	BACKUPFILE=backup.$(date +%y%m%d%H%M%S).tar.gz
	if [ -d $DSTDIR ]
	then
		tar -cvzf $DSTDIR/$BACKUPFILE $SRCDIR
	else
		mkdir $DSTDIR
		tar -cvzf $DSTDIR/$BACKUPFILE $SRCDIR
	fi
fi

