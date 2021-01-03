#!/bin/bash

# 기본 if 구문
# if [ 조건 ]
# then 명령문
# fi

# 문자비교
# 문자1 == 문자2	# 문자1과 문자2가 일치
# 문자1 != 문자2	# 문자1관 문자2가 불일치
# -Z 문자		# 문자가 null임
# -n 문자		# 문자가 null 아님
echo 문자비교----------
if [ $# -eq 2 ]
then
	if [ $1 != $2 ]
	then
		echo "different values"
	else
		echo "same"
	fi
fi

# 숫자비교
# 값1 -eq 값2		# equal
# 값1 -ne 값2		# not equal
# 값1 -lt 값2		# less than
# 값1 -le 값2		# less or equal
# 값1 -gt 값2		# greater than
# 값1 -ge 값2		# greater or equal
echo 숫자비교----------
if [ $# -eq 2 ]
then
	if [ $1 -gt $2 ]
	then
		echo "$1 is higher than $2"
	elif [ $1 -lt $2 ]
	then
		echo "$1 is less than $2"
	else
		echo "$1 equals to $2"
	fi
fi

# 파일검사
# -e 파일명		# 존재하면 참
# -f 파일명		# 일반파일이면 참
# -h 파일명		# 심볼릭 링크파일이면 참
# -d 파일명		# 디렉토리면 참
# -r 파일명		# 읽기가능이면 참
# -w 파일명		# 쓰기가능이면 참
# -x 파일명		# 실행가능이면 참
# -s 파일명		# 크기가 0이 아니면 참
# -u 파일명		# set-user-id 설정되면 참
echo 파일검사----------
if [ $# -eq 1 ]
then
	if [ -e $1 ]
	then
		if [ -f $1 ]
		then	echo 일반파일 존재함
		elif [ -h $1 ]
		then	echo 심볼릭링크파일 존재함
		elif [ -d $1 ]
		then	echo 디렉토리 존재함
		else	echo 불확실한 파일임
		fi
	fi
fi

