#!/bin/bash

# 배열
# 선언 : 변수명=(데이터1 데이터2 데이터3...)
# 사용 : ${변수명[인덱스번호]}
daemons=("httpd" "mysqld" "vsftpd")
echo ${daemons[1]}	# $daemons 배열의 2번째 인덱스에 해당하는 mysqld 출력
echo ${daemons[@]}	# $daemons 배열의 모든 데이터 출력
echo ${daemons[*]}	# $daemons 배열의 모든 데이터 출력
echo ${#daemons[@]}	# $daemons 배열의 크기 출력

filelist=($(ls))	# ls 실행결과인 파일리스트를 배열로 $filelist 변수에 넣음
echo ${filelist[*]}	# filelist 모든 데이터 출력


